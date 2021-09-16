<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;


class Post extends Model
{
    use HasFactory;

    protected $table = 'posts';
    protected $fillable = ['text', 'image', 'views'];

    public function comment() : HasMany
    {
        return $this->hasMany(Comment::class);
    }

}
