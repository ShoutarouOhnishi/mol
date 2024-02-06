<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable as AuthenticatableMixin;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Passport\HasApiTokens;
use Carbon\Carbon;

class AppUser extends Model implements Authenticatable
{
    use AuthenticatableMixin;
    use HasApiTokens;
    use HasFactory;
    use SoftDeletes;

    protected $guarded = ['id', 'created_at', 'updated_at', 'deleted_at'];

    protected $hidden = [
        'pivot'
    ];

    protected $casts = [
        'is_ban' => 'boolean',
        'is_withdraw' => 'boolean',
    ];

    /**
     * 退会済みユーザー（論理削除含む）を取得
     *
     * @param Builder  $query
     * @param bool  $value
     * @return void
     */
    public function scopeIsWithdraw($query, $value): void
    {
        $query->whereIsWithdraw($value)->withTrashed();
    }

    /**
     * 公開情報のみを返却するスコープ
     *
     * @param Builder $query
     * @return void
     */
    public function scopeDisclosed($query): void
    {
        $query->select('app_users.id', 'app_users.name', 'app_users.accessed_at', 'app_users.created_at');
    }

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($query) {
            $query->accessed_at = Carbon::now();
        });
    }

}
