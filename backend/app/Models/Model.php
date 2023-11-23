<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model as BaseModel;
use DateTimeInterface;

class Model extends BaseModel
{
    /**
     * Prepare a date for array / JSON serialization.
     *
     * @param  \DateTimeInterface  $date
     * @return string
     */
    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
