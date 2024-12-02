<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
     protected $fillable = ['fixture_id', 'team_id', 'player_name', 'event_type', 'event_time'];

    public function fixture()
    {
        return $this->belongsTo(Fixture::class);
    }

    public function team()
    {
        return $this->belongsTo(Team::class);
    }
}
