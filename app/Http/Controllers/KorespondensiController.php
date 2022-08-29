<?php

namespace App\Http\Controllers;
use App\Models\Pasien;
use App\Models\Jenistb;
use App\Models\Kecamatan;

use Illuminate\Support\Facades\DB;

class KorespondensiController extends Controller
{
    public function index()
    {
        return view('dashboard.korespondensis.index', [
            'jumlahkecamatan' => DB::table('kecamatans')->count(),
            'jumlahpasien' => DB::table('pasiens')->count(),

            // 'kecamatans' => DB::table('kecamatans')
            //     ->join('pasiens', 'pasiens.kecamatan_id', '=', 'kecamatans.id')
            //     ->join('jenistbs', 'pasiens.jenistb_id', '=', 'jenistbs.id')
            //     ->select('kecamatans.nama_kecamatan','kecamatans.id', DB::raw("COUNT(*) as jumlah"))
            //     ->groupBy('kecamatans.nama_kecamatan', 'kecamatans.id')
            //     ->get(),
            'tbparus' => DB::table('jenistbs')
                ->join('pasiens', 'pasiens.jenistb_id', '=', 'jenistbs.id')
                ->select('jenistbs.id', DB::raw("COUNT(*) as jumlah"))
                ->groupBy('jenistbs.id')
                ->where('jenistbs.id', 1)
                ->count(),

            'tbekstraparu' => DB::table('jenistbs')
                ->join('pasiens', 'pasiens.jenistb_id', '=', 'jenistbs.id')
                ->select('jenistbs.id', DB::raw("COUNT(*) as jumlah"))
                ->where('jenistbs.id', 2)
                ->groupBy('jenistbs.id')
                ->count(),

                'perkec' => DB::table('kecamatans')
                    ->join('pasiens', 'pasiens.kecamatan_id', '=', 'kecamatans.id')
                    ->join('jenistbs', 'pasiens.jenistb_id', '=', 'jenistbs.id')
                    ->select('kecamatans.nama_kecamatan', DB::raw("COUNT(*) as jlh"))
                    ->groupBy('kecamatans.nama_kecamatan')
                    ->get(),
                    
                
            // 'jumlahkecamatan' => DB::table('kecamatans')->count(),
            // 'jumlahpasien' => DB::table('pasiens')->count(),
            // $datagis = DB::table('kecamatans')
            //     ->join('pasiens', 'pasiens.kecamatan_id', '=', 'kecamatans.id')
            //     ->join('jenistbs', 'pasiens.jenistb_id', '=', 'jenistbs.id')
            //     ->select('kecamatans.id', ('jenistbs.id'), 'kecamatans.nama_kecamatan', DB::raw("COUNT(*) as jlh"))
            //     ->groupBy('kecamatans.id', 'kecamatans.nama_kecamatan', 'jenistbs.id')
            //     ->get(),
            // $shares = DB::table('shares')
            //     ->leftjoin('followers', 'shares.user_id', '=', 'followers.follower_id')
            //     ->leftjoin('users', 'followers.user_id', '=', 'users.id')
            //     ->where('users.id', 3)
            //     ->where('shares.user_id', 'followers.follower_id')
            //     ->get(),
            // $users = DB::table('users')
            //     ->join('contacts', 'users.id', '=', 'contacts.user_id')
            //     ->join('orders', 'users.id', '=', 'orders.user_id')
            //     ->select('users.*', 'contacts.phone', 'orders.price')
            //     ->get(),
            // $awals = DB::table('pasiens')
            //     ->join('kecamatans', 'kecamatans.id', '=', 'pasiens.kecamatan_id')
            //     ->join('jenistbs', 'jenistbs.id', '=', 'pasiens.jenistb_id')
            //     ->select('kecamatans.nama_kecamatan', 'jenistbs.id', DB::raw("COUNT(*) as jumlah"))
            //     ->where('jenistbs.id', 1)
            //     ->groupBy('kecamatans.nama_kecamatan', 'jenistbs.id')
            //     ->get(),

        ]);
    }
}
