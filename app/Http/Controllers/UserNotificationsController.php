<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;

class UserNotificationsController extends Controller
{
    //
    public function index(Request $request)
    {   
        auth()->user()->unreadNotifications->markAsRead();
        
        $notifications = auth()->user()->notifications()->latest()->paginate();

        if($request->wantsJson()){
            return $notifications;
        }

        return Inertia::render('Notifications', [
            'notifications' => $notifications
        ]);
    }
}
