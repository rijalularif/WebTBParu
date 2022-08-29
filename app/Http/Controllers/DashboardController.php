<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard.index', [
            'jumlahpost' => DB::table('posts')->count(),
            'jumlahkecamatan' => DB::table('kecamatans')->count(),
            'jumlahpasien' => DB::table('pasiens')->count(),
            'jumlahkategori' => DB::table('categories')->count(),
            'jumlahdokter' => DB::table('dokters')->count(),
        ]);
    }
}
