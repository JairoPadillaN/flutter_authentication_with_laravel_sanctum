<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Auth\AuthenticationException;


class TokenController extends Controller
{
    public function store(Request $request) {
        
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (!auth()->attempt($request->only('email','password'))) {
            throw new AuthenticationException();
        }

        return [
            'token' => auth()->user()->createToken('test')->plainTextToken
        ];
    }
}
