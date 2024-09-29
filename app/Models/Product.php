<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $guarded = [];

    protected $casts = [
        'like_list' => 'array',
    ];

    public function group_id()
    {
        return $this->belongsTo(Group::class, 'group');
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
