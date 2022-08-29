<?php

namespace App\Http\Controllers;

use App\Models\Jk;
use App\Models\Pasien;
use App\Models\Jenistb;
use App\Models\Kecamatan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Dokter;

class DashboardPasienController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.pasiens.index', [
            'pasiens' => Pasien::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.pasiens.create', [
            'jks' => Jk::all(),
            'jenistbs' => Jenistb::all(),
            'kecamatans' => Kecamatan::all(),
            'dokters' => Dokter::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama' => 'required|max:255',
            'umur' => 'required',
            'jk_id' => 'required',
            'kecamatan_id' => 'required',
            'jenistb_id' => 'required',
            'dokter_id' => 'required',
            'diagnosa' => 'required'
            // 'gejalas' => 'required|min:2'
        ]);

        // if (in_array('Batuk', $request->get('gejalas'))) {
        //     //User TB Paru
        // } else {
        //     //User tidak TB Paru
        // }

        Pasien::create($validatedData);
        return redirect('dashboard/pasiens')->with('success', 'New pasien has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function show(Pasien $pasien)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function edit(Pasien $pasien)
    {
        return view('dashboard.pasiens.edit', [
            'pasien' => $pasien,
            'jks' => Jk::all(),
            'kecamatans' => Kecamatan::all(),
            'jenistbs' => Jenistb::all(),
            'dokters' => Dokter::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pasien $pasien)
    {
        $rules = [
            'nama' => 'required|max:255',
            'umur' => 'required',
            'jk_id' => 'required',
            'kecamatan_id' => 'required',
            'jenistb_id' => 'required',
            'dokter_id' => 'required',
            'diagnosa' => 'required'
        ];
        $validatedData = $request->validate($rules);
        Pasien::where('id', $pasien->id)
            ->update($validatedData);
        return redirect('dashboard/pasiens')->with('success', 'Data Pasien has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pasien $pasien)
    {
        Pasien::destroy($pasien->id);

        return redirect('dashboard/pasiens')->with('success', 'Data pasien has been deleted!');
    }
}
