<?php

namespace App\Http\Controllers\ExecutiveThree;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        return view('backend.executive_three.dashboard');
    }
}
