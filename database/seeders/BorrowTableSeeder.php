<?php

namespace Database\Seeders;
use App\Models\Borrow;
use Illuminate\Database\Seeder;

class BorrowTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Borrow::factory()->count(10)->create();
    }
}
