<?php

namespace Database\Factories;
use App\Models\Book;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{

    protected $model=Book::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->sentence(2,'true'),
            'pagecount'=>$this->faker->numberBetween(100,900),
            'typeId'=>$this->faker->numberBetween(1,10),
        ];
    }
}
