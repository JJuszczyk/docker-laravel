<?php
declare(strict_types=1);

namespace App\Console\Commands;

use App\Jobs\TestQueue;
use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;

class DispatchJobToQueueCommand extends Command
{
    use DispatchesJobs;

    protected $signature = 'queue:dispatch';

    public function handle(): void
    {
        $this->dispatch(new TestQueue());
    }
}
