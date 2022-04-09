<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;

class UserFollowersController extends Controller
{
    //
    public function index(User $user, Request $request)
    {   
        $followers = $user->followers()
        ->withCount([
            'followers as following' => function($q){
                return $q->where('follower_id', auth()->id());
            }
        ])
        ->withCasts(['following'=>'boolean'])
        ->paginate();

        if($request->wantsJson()){
            return $followers;
        }


        return Inertia::render('Followers', [
            'followers'=> $followers,
            'profile'=>[
                'user' => $user
            ]
        ]);
    }
}
