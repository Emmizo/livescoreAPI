<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Team;
use App\Models\Schudule;
use App\Models\Fixture;

class LiveScoreController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

       $fixtures = Fixture::with(['homeTeam', 'awayTeam'])->get();

$formattedFixtures = $fixtures->map(function ($fixture) {
    return [
        'fixture_id' => $fixture->id,
        'home_team_name' => $fixture->homeTeam->name,
        'home_team_venue' => $fixture->homeTeam->venue,
        'away_team_name' => $fixture->awayTeam->name,
        'match_date' => $fixture->match_date,
    ];
});

return response()->json($formattedFixtures);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $team=Team::create([
            'name'=>$request->name,
            'venue'=>$request->venue,
            'logo'=>$request->logo,
        ]);
        return response()->json(['success' => "Successfully created",'status' =>200],200);
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function storeSchedule(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
