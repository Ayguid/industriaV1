<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;

class UserFollowingsController extends Controller
{
    //
    public function index(User $user, Request $request)
    {   
        $result = $user->followings()->withCount([
            'followers as following' => function($q){
                return $q->where('follower_id', auth()->id());
            }
        ])
        ->withCasts(['following'=>'boolean'])
        ->paginate();

        if($request->wantsJson()){
            return $result;
        }

        return Inertia::render('Followings', [
            'followings'=> $result,
            'profile'=>[
                'user' => $user
            ]
        ]);
    }


    public function store(User $user, $id)
    {
        $user->followings()->attach($id);
        return redirect()->back();
    }


    public function destroy(User $user, $id)
    {
        $user->followings()->detach($id);
        return redirect()->back();
    }


}
