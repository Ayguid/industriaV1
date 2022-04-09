<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;

    protected $table='files';


    public function fileable()
    {
      return $this->morphTo();
    }
  
    public function extension()
    {
      return $ext = pathinfo($this->file_path, PATHINFO_EXTENSION);
    }
}
