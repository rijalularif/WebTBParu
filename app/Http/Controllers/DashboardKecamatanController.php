<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DashboardKecamatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.kecamatans.index', [
            'kecamatans' => Kecamatan::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.kecamatans.create', [
            'kecamatans' => Kecamatan::all()
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
            'nama_kecamatan' => 'required|max:255',
            'geojson'         => 'file|max:1024'
        ]);
        if ($request->file('geojson')) {
            $validatedData['geojson'] = $request->file('geojson')->store('geojson');
        }
        Kecamatan::create($validatedData);
        return redirect('dashboard/kecamatans')->with('success', 'Kecamatan has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kecamatan  $kecamatan
     * @return \Illuminate\Http\Response
     */
    public function show(Kecamatan $kecamatan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kecamatan  $kecamatan
     * @return \Illuminate\Http\Response
     */
    public function edit(Kecamatan $kecamatan)
    {
        return view('dashboard.kecamatans.edit', [
            'kecamatan' => $kecamatan
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kecamatan  $kecamatan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kecamatan $kecamatan)
    {
        $rules = [
            'nama_kecamatan' => 'required|max:255',
            'geojson'        => 'file|max:1024'
        ];
        $validatedData = $request->validate($rules);

        if ($request->file('geojson')) {
            if ($request->oldGeojson) {
                Storage::delete($request->oldGeojson);
            }
            $validatedData['geojson'] = $request->file('geojson')->store('geojson');
        }

        Kecamatan::where('id', $kecamatan->id)
            ->update($validatedData);
        return redirect('dashboard/kecamatans')->with('success', 'Kecamatan has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kecamatan  $kecamatan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kecamatan $kecamatan)
    {
        Kecamatan::destroy($kecamatan->id);

        return redirect('dashboard/kecamatans')->with('success', 'Kecamatan has been deleted!');
    }
}
