<?php

namespace App\Http\Controllers\Frontend;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Payment;
use App\Models\Shipping;
use App\Models\Customer;
use App\Models\District;
use App\Models\ShippingCharge;
use App\Models\PaymentGateway;
use App\Models\SmsGateway;
use App\Models\GeneralSetting;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;

class CustomerController extends Controller
{
    function __construct()
    {
        $this->middleware('customer', ['except' => [
            'login',
            'signin',
            'register',
            'store',
        ]]);
    }



    public function login()
    {
        return view('frontEnd.layouts.customer.login');
    }

    public function signin(Request $request)
    {
        $auth_check = Customer::where('phone', $request->phone)->first();
        if ($auth_check) {
            if (Auth::guard('customer')->attempt(['phone' => $request->phone, 'password' => $request->password])) {
                Toastr::success('You are login successfully', 'success!');
                return redirect()->intended('customer/account');
            }
            Toastr::error('message', 'Opps! your phone or password wrong');
            return redirect()->back();
        } else {
            Toastr::error('message', 'Sorry! You have no account');
            return redirect()->back();
        }
    }

    public function register()
    {
        return view('frontEnd.layouts.customer.register');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name'    => 'required',
            'phone'    => 'required|unique:customers',
            'password' => 'required|min:6'
        ]);

        $last_id = Customer::orderBy('id', 'desc')->first();
        $last_id = $last_id ? $last_id->id + 1 : 1;
        $store              = new Customer();
        $store->name        = $request->name;
        $store->slug        = strtolower(Str::slug($request->name . '-' . $last_id));
        $store->phone       = $request->phone;
        $store->email       = $request->email;
        $store->password    = bcrypt($request->password);
        $store->verify      = 1;
        $store->status      = 'active';
        $store->save();

        Toastr::success('Success', 'Account Create Successfully');
        return redirect()->route('customer.login');
    }

    public function account()
    {
        return view('frontEnd.layouts.customer.account');
    }
    public function logout(Request $request)
    {
        Auth::guard('customer')->logout();
        Toastr::success('You are logout successfully', 'success!');
        return redirect()->route('customer.login');
    }

    public function checkout()
    {
        $shippingcharge = ShippingCharge::where('status', 1)->get();
        $select_charge = ShippingCharge::where('status', 1)->first();
        $bkash_gateway = PaymentGateway::where(['status' => 1, 'type' => 'bkash'])->first();
        $shurjopay_gateway = PaymentGateway::where(['status' => 1, 'type' => 'shurjopay'])->first();
        Session::put('shipping', $select_charge->amount);
        return view('frontEnd.layouts.customer.checkout', compact('shippingcharge', 'bkash_gateway', 'shurjopay_gateway'));
    }

    public function order_save(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'area' => 'required',
        ]);
        if (Cart::instance('shopping')->count() <= 0) {
            Toastr::error('Your shopping empty', 'Failed!');
            return redirect()->back();
        }

        $subtotal = Cart::instance('shopping')->subtotal();
        $subtotal = str_replace(',', '', $subtotal);
        $subtotal = str_replace('.00', '', $subtotal);
        $discount = Session::get('discount');

        $shippingfee  = Session::get('shipping');
        $shipping_area  = ShippingCharge::where('id', $request->area)->first();
        if (Auth::guard('customer')->user()) {
            $customer_id = Auth::guard('customer')->user()->id;
        } else {
            $exits_customer = Customer::where('phone', $request->phone)->select('phone', 'id')->first();
            if ($exits_customer) {
                $customer_id = $exits_customer->id;
            } else {
                $password = rand(111111, 999999);
                $store              = new Customer();
                $store->name        = $request->name;
                $store->slug        = $request->name;
                $store->phone       = $request->phone;
                $store->password    = bcrypt($password);
                $store->verify      = 1;
                $store->status      = 'active';
                $store->save();
                $customer_id = $store->id;
            }
        }

        // order data save
        $order                   = new Order();
        $order->invoice_id       = rand(11111, 99999);
        $order->amount           = ($subtotal + $shippingfee) - $discount;
        $order->discount         = $discount ? $discount : 0;
        $order->shipping_charge  = $shippingfee;
        $order->customer_id      =  $customer_id;
        $order->order_status     = 1;
        $order->note             = $request->note;
        $order->save();

        // shipping data save
        $shipping              =   new Shipping();
        $shipping->order_id    =   $order->id;
        $shipping->customer_id =   $customer_id;
        $shipping->name        =   $request->name;
        $shipping->phone       =   $request->phone;
        $shipping->address     =   $request->address;
        $shipping->area        =   $shipping_area->name;
        $shipping->save();

        // payment data save
        $payment                 = new Payment();
        $payment->order_id       = $order->id;
        $payment->customer_id    = $customer_id;
        $payment->payment_method = $request->payment_method;
        $payment->amount         = $order->amount;
        $payment->payment_status = 'pending';
        $payment->save();

        // order details data save
        foreach (Cart::instance('shopping')->content() as $cart) {
            $order_details                  =   new OrderDetails();
            $order_details->order_id        =   $order->id;
            $order_details->product_id      =   $cart->id;
            $order_details->product_name    =   $cart->name;
            $order_details->purchase_price  =   $cart->options->purchase_price;
            $order_details->product_color   =   $cart->options->product_color;
            $order_details->product_size    =   $cart->options->product_size;
            $order_details->sale_price      =   $cart->price;
            $order_details->qty             =   $cart->qty;
            $order_details->save();
        }

        Cart::instance('shopping')->destroy();

        Toastr::success('Thanks, Your order place successfully', 'Success!');
        $site_setting = GeneralSetting::where('status', 1)->first();

        return redirect('customer/order-success/' . $order->id);
    }

    public function orders()
    {
        $orders = Order::where('customer_id', Auth::guard('customer')->user()->id)->with('status')->latest()->get();
        return view('frontEnd.layouts.customer.orders', compact('orders'));
    }

    public function order_success($id)
    {
        $order = Order::where('id', $id)->firstOrFail();
        return view('frontEnd.layouts.customer.order_success', compact('order'));
    }


    public function profile_edit(Request $request)
    {
        $profile_edit = Customer::where(['id' => Auth::guard('customer')->user()->id])->firstOrFail();
        $districts = District::distinct()->select('district')->get();
        $areas = District::where(['district' => $profile_edit->district])->select('area_name', 'id')->get();
        return view('frontEnd.layouts.customer.profile_edit', compact('profile_edit', 'districts', 'areas'));
    }
    public function profile_update(Request $request)
    {
        $update_data = Customer::where(['id' => Auth::guard('customer')->user()->id])->firstOrFail();

        $image = $request->file('image');
        if ($image) {
            // image with intervention 
            $name =  time() . '-' . $image->getClientOriginalName();
            $name = preg_replace('"\.(jpg|jpeg|png|webp)$"', '.webp', $name);
            $name = strtolower(Str::slug($name));
            $uploadpath = 'public/uploads/customer/';
            $imageUrl = $uploadpath . $name;
            $img = Image::make($image->getRealPath());
            $img->encode('webp', 90);
            $width = 120;
            $height = 120;
            $img->resize($width, $height);
            $img->save($imageUrl);
        } else {
            $imageUrl = $update_data->image;
        }

        $update_data->name        =   $request->name;
        $update_data->phone       =   $request->phone;
        $update_data->email       =   $request->email;
        $update_data->address     =   $request->address;
        $update_data->district    =   $request->district;
        $update_data->area        =   $request->area;
        $update_data->image       =   $imageUrl;
        $update_data->save();

        Toastr::success('Your profile update successfully', 'Success!');
        return redirect()->route('customer.account');
    }




    public function change_pass()
    {
        return view('frontEnd.layouts.customer.change_password');
    }

    public function password_update(Request $request)
    {
        $this->validate($request, [
            'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required_with:new_password|same:new_password|'
        ]);

        $customer = Customer::find(Auth::guard('customer')->user()->id);
        $hashPass = $customer->password;

        if (Hash::check($request->old_password, $hashPass)) {

            $customer->fill([
                'password' => Hash::make($request->new_password)
            ])->save();

            Toastr::success('Success', 'Password changed successfully!');
            return redirect()->route('customer.account');
        } else {
            Toastr::error('Failed', 'Old password not match!');
            return redirect()->back();
        }
    }
}
