<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\Login;
use App\User;
use Validator;
use Auth;
use Illuminate\Support\MessageBag;
class LoginController extends Controller
{
    public function postLogin(Request $request)
    {
    	$rules = [
            'username'    => 'required',
            'password' => 'required|min:8'
        ];
        $messages = [
            'username.required'    => 'username là trường bắt buộc',
            'password.required' => 'Mật khẩu là trường bắt buộc',
            'password.min'      => 'Mật khẩu phải chứa ít nhất 8 ký tự',
        ];
        $validator = Validator::make($request->all(),$rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $username = $request->input('username');
            $password = $request->input('password');

            if (Auth::attempt(['username' => $username, 'password' => $password])) {
                return redirect()->route('admin.dashbroad');
            } else {
                $errors = new MessageBag(['errorlogin' => 'Email hoặc mật khẩu không đúng']);
                return redirect()->back()->withInput()->withErrors($errors);
            }
        }
    }
    public function getlogout()
    {
        Auth::logout();
        return redirect()->route('admin.export');
    }

    public function postRegistration(registrationReq $request){
        $user = [
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ];
        $registration = User::insert($user);
        return response()->json([$registration,'success'=>'thêm tài khoản thành công']);
    }
}
