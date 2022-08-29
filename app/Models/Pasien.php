<?php

namespace App\Models;

use App\Models\Jk;
use App\Models\Dokter;
use App\Models\Jenistb;
use App\Models\Kecamatan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Pasien extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $with = ['jenistb', 'kecamatan', 'jk', 'dokter'];

    public function jenistb()
    {
        return $this->belongsTo(Jenistb::class);
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class);
    }

    public function jk()
    {
        return $this->belongsTo(Jk::class);
    }

    public function dokter()
    {
        return $this->belongsTo(Dokter::class);
    }
}
