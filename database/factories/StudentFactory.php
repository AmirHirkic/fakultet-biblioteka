<?php

namespace Database\Factories;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{   

    protected $model = Student::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $spol=$this->faker->randomElement(['Male','Female']);
        return [
            'name'=>$this->faker->name($spol),
            'birthdate'=>$this->faker->date('Y-m-d','2002-01-01'),
            'gender'=>$spol,
            'classId'=>$this->faker->numberBetween(1,5),
        ];
    }
}
