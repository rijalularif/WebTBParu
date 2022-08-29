<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class GisController extends Controller
{
    public function index()
    {
        return view('gis', [
            'title' => 'Pemetaan TB Paru RSU Cut Meutia Aceh Utara',
            'datagis' => DB::table('kecamatans')
                ->join('pasiens', 'pasiens.kecamatan_id', '=', 'kecamatans.id')
                ->select('kecamatans.id', 'kecamatans.geojson', 'kecamatans.nama_kecamatan', DB::raw("COUNT(*) as jlh"))
                ->groupBy('kecamatans.id', 'kecamatans.nama_kecamatan', 'kecamatans.geojson')
                ->get()
        ]);
    }
}
