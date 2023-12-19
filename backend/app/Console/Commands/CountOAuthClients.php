<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class CountOAuthClients extends Command
{
    protected $signature = 'oauth:count';

    public function handle()
    {
        $count = DB::table('oauth_clients')->count();
        echo $count;
    }
}
