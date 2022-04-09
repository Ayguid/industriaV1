<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\File;
use App\Models\Media;
//use Illuminate\Database\Relations\MorphMany;

class Post extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'user_id',
        'title',
        'content'
    ];

    public function likes()
    {
        return $this->belongsToMany(User::class, 'liked_posts')->withTimestamps();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }


    public function media()
    {
        return $this->morphMany(Media::class, 'model');
    }



    ////
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id')->select('id', 'name', 'profile_photo_path');
    }

    public function files()
    {
      return $this->morphMany(File::class, 'fileable');
    }
}
