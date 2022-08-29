<?php

namespace App\Models;

use App\Models\Pasien;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kecamatan extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function pasiens()
    {
        return $this->hasMany(Pasien::class);
    }
}
