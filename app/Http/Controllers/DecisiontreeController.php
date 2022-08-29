<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Redirect;

class DecisiontreeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.decisiontrees.index', [
            'gejala' => array("batuk 2-3 minggu", "keringat malam", "berat badan turun", "nafsu makan berkurang", "napas sesak", "muncul benjolan"),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->all();
        $gejala = array("batuk 2-3 minggu", "keringat malam", "berat badan turun", "nafsu makan berkurang", "napas sesak", "muncul benjolan");
        $penyakit = array("tb paru", "tb ekstra paru");
        $rules = array(
            array(1, 0, 1, 0, 1, 0),
            array(0, 1, 0, 1, 0, 1)
        );

        if (isset($_POST['submit'])) {

            for ($j = 0; $j < (count($gejala)); $j++) {
                if (isset($_POST['radio' . $j])) {
                    $input[$j] = $_POST['radio' . $j];
                } else {
                    $input[$j] = 0;
                }
            }

            if (array_sum($input) == 0) {
                return redirect('dashboard/decisiontrees')->with('success', 'Pasien dalam keadaan sehat!');
            } else {
                $temp = 0;
                for ($i = 0; $i < (count($rules)); $i++) {
                    $sum[$i] = 0;
                    for ($j = 0; $j < (count($gejala)); $j++) {
                        $sum[$i] = $sum[$i] + ($input[$j] * $rules[$i][$j]);
                    }

                    if ($temp < $sum[$i]) {
                        $temp = $sum[$i];
                        $diagnosa = $i;
                    }
                }
                return redirect('dashboard/decisiontrees')->with('success', 'Pasien diduga menderita penyakit ' . $penyakit[$diagnosa]);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
