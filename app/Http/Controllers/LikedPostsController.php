<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Notifications\LikedPostNotification;
//use Illuminate\Support\Facades\Notification;

class LikedPostsController extends Controller
{
    //
    public function toggle(Post $post)
    {   
        //$post->likes()->attach(auth()->id()); //attach esta salvando automaticamente el postlike, WOW
        $result = $post->likes()->toggle(auth()->id()); //toggle alterna automaticamente el postlike, WOW
        //Notificar solo si no fue un like del usuario que hizo el post    
        if(count($result['attached']) && auth()->user()->id !== $post->user_id){
            //Notification::sendNow($post->user, new LikedPostNotification($post, auth()->user()));
            $post->user->notify(new LikedPostNotification($post, auth()->user()));
        }
        //return redirect()->back();
        //return $result;
        return $post->likes->count();
    }
}
