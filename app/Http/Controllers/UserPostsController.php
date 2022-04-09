<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;


class UserPostsController extends Controller
{
    //
    public function index(User $user, Request $request)
    {   

        $posts = $user->posts()
        ->withCount(['likes', 'likes as liked'=>function($q){
            $q->where('user_id', auth()->id());
        }])
        ->withCasts(['liked' => 'boolean'])
        
        ->with(['user', 'media', 'likes'])->latest()->paginate();

        if($request->wantsJson()){
            return $posts;
        }

        return Inertia::render('UserPosts', [            
            //'user' => $user,
            'posts' => $posts
        ]);
    }
}
