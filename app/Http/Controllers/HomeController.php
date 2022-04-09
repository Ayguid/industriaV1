<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Post;
use Inertia\Inertia;

class HomeController extends Controller
{
    //
    public function show(Request $request)
    {   

        $posts = Post::where(function($qry){
            $qry->where('user_id', auth()->id())
            ->orWhereIn('user_id', auth()->user()->followings->pluck('id'));
        })
        ->withCount([
            'likes',
            'likes as liked' => function($q){
                $q->where('user_id', auth()->id());
            }
        ])
        ->withCasts(['liked' => 'boolean'])
        ->with(['user', 'media'])
        ->latest()
        ->paginate();

        if($request->wantsJson()){
            return $posts;
        }

        return Inertia::render('Home', [
            'posts'=> $posts
        ]);
    }
}
