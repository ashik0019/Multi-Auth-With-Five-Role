<?php

namespace App\Http\Controllers\ExecutiveTwo;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        return view('backend.executive_two.dashboard');
    }
}
