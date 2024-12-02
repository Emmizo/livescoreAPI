<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LiveScoreController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('/livescore', [LiveScoreController::class, 'index']);
Route::post('/livescoreCreate', [LiveScoreController::class, 'create']);
Route::get('/events', [LiveScoreController::class,'getFixturesWithScores']);
