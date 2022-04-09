<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Media;
use Illuminate\Support\Facades\Storage;

use Illuminate\Validation\Rule;

class PostsController extends Controller
{
    //
    public function store(Request $request)
    {
        $request->validate([
            'content' => ['required', 'max:270'],
            /*
            'mediaIds.*' => [
                Rule::exists('media')->where(function($query)use ($request){
                    $query->where('user_id', $request->user()->id);
                })
            ] 
            */
        ]);

        $post = Post::create([
            'content' => $request->input('content'),
            'user_id' => $request->user()->id
            ]);
        //como primero se suben las imagenes, despues se hace update de sus ṕostid una vez creado el post
        Media::find($request->mediaIds)->each->update([
            'model_id' => $post->id,
            'model_type' => Post::class
        ]);
        return redirect()->back();
    }



    public function destroy(Post $post)
    {   
        //$user->followings()->detach($id)
        $post->likes()->detach();
        /*
        Storage::disk('public')
        ->delete('media/' . $media->user_id . '/' . now()->format('Y') . '/' . now()->format('m') . '/' . $media->filename);   
        */
        $post->media()->each(function($med){
            $location = 'media/'. $med->user_id . '/'. date_format($med->created_at, 'Y') .'/'. date_format($med->created_at, 'm') . '/' . $med->filename;
            Storage::disk('public')
            ->delete($location); 
            $med->delete();
        });
        //$post->media()->delete();
        $post->delete();
        return redirect()->back();
        # code...
        /*
        Storage::disk('public')
        ->delete('media/' . $media->user_id . '/' . now()->format('Y') . '/' . now()->format('m') . '/' . $media->filename);   
        */
    }
}
