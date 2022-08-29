<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Routing\Controller;

class CategoriesController extends Controller
{
    public function index()
    {
        return view('categories', [
            'title' => 'Post Categories',
            'categories' => Category::all()
        ]);
    }
}
