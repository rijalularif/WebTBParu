<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class DashboardGisController extends Controller
{
    public function index()
    {
        return view('dashboard.giss.index', [
            'datagiss' => DB::table('kecamatans')
                ->join('pasiens', 'pasiens.kecamatan_id', '=', 'kecamatans.id')
                ->select('kecamatans.id', 'kecamatans.geojson', 'kecamatans.nama_kecamatan', DB::raw("COUNT(*) as jlh"))
                ->groupBy('kecamatans.id', 'kecamatans.nama_kecamatan', 'kecamatans.geojson')
                ->get()
        ]);
    }
}
