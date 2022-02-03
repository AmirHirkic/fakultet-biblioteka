<?php

namespace Database\Factories;
use App\Models\Book_Author;
use Illuminate\Database\Eloquent\Factories\Factory;

class Book_AuthorFactory extends Factory
{
     protected $model = Book_Author::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'bookId'=>$this->faker->unique()->numberBetween(1,500),
            'authorId'=>$this->faker->numberBetween(1,100),
        ];
    }
}
