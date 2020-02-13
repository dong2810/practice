<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;
use Auth;
use App\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller as BaseController;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
   public function __construct()
   {
       $this->middleware('guest')->except('logout');
   }

   public function tb_employees(){
    return 'tb_employees';
   }
   public function login(Request $req)
   {
       $errors = new MessageBag();
         if (!empty($req->post())){
             $validator = Validator::make($req->post(), [
                 'username' => 'required|min:5',
                 'password' => 'required|min:5'
             ]);
             if (!$validator->fails()) {
                 $username = $req->post('username');
                 $password = $req->post('password');

                 $user = User::query()->where('username', $username)->get();
                 if (!empty($user)){
                     $user = $user[0];
                     if ($password === $user->password){

                         if ($user->status == 1){
                             $req->session()->put('isLoggedIn', true);
                             $req->session()->put('role',$user->role);
                             $req->session()->put('username', $username);
                             return redirect('/user');
                         }else{
                             $errors->add("", "This user has been locked");
                         }
                     }else{
                         $errors->add("", "The credentials are incorrect");
                     }
                 }else{
                     $errors->add("", "The credentials are incorrect");
                 }
             }else{
                 $errors = $validator->errors();
             }

         }
         return view("login", [
             'errors' => $errors
         ]);
   }

}
