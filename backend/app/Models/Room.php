<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Room extends Model
{

    public $incrementing = false;
    protected $keyType = 'string';

    protected $guarded = ['created_at', 'updated_at'];

    protected $casts = [
        'ended_at' => 'datetime',
    ];

    public function members(): BelongsToMany
    {
        return $this->belongsToMany(AppUser::class, 'room_members');
    }
}
