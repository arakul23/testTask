<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Comment extends Model
{
    use HasFactory;

    protected $table = 'comments';
    protected $fillable = ['text', 'post_id', 'user_id'];

    public function post() : HasOne
    {
        return $this->hasOne(Post::class);
    }

    public function replies() : HasMany
    {
        return $this->hasMany(self::class, 'parent_id');
    }
}
