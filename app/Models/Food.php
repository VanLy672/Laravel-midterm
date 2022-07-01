<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    use HasFactory;
    protected $table = 'foods';
    protected $fillable = ['price', 'old_price', 'description', 'image', 'categories_id'];
    function categories () {
       return $this->beLongsTo(Categories::class, 'categories_id', 'id');
    }
}
