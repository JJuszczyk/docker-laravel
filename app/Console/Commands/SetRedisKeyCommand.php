<?php
declare(strict_types=1);

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Redis;

class SetRedisKeyCommand extends Command
{
    protected $signature = 'redis:set';

    public function handle(): void
    {
        Redis::set('test', '123');
    }
}
