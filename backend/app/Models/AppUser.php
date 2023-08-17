<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable as AuthenticatableMixin;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
// use Laravel\Passport\HasApiTokens;

class AppUser extends Model implements Authenticatable
{
    use AuthenticatableMixin;
    // use HasApiTokens;
    use HasFactory;
    use SoftDeletes;

    protected $guarded = ['id', 'created_at', 'updated_at', 'deleted_at'];

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
        $query->select('id', 'name', 'accessed_at', 'created_at');
    }
}
