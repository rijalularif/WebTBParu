<?php

namespace App\Http\Controllers;

use App\Models\Rlb;
use Illuminate\Routing\Controller;

class RlbController extends Controller
{
    public function index()
    {
        return view('dashboard.rlbs.index', [
            'rlb' => Rlb::class
        ]);
    }
}
