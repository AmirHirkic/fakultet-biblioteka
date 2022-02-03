<?php

namespace Database\Factories;
use App\Models\Borrow;
use Illuminate\Database\Eloquent\Factories\Factory;

class BorrowFactory extends Factory
{

    protected $model =Borrow::class;
    /**
     * 
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $dt =$this->faker->dateTimeBetween($startDate = '-6 weeks', $endDate = '-4 weeks');
$date = $dt->format("Y-m-d"); // za knjige koje su vracene, poc datum
        $dt2 = $this->faker->dateTimeBetween($startDate = '-2 weeks', $endDate = 'now');
$date2 = $dt2->format("Y-m-d"); // za knjige koje su vracene, kraj. datum

        $dt3 = $this->faker->dateTimeBetween($startDate = '-2 weeks', $endDate = 'now');
$date3 = $dt3->format("Y-m-d"); // za knjige koje nisu vracene, poc datum

        return [
            'studentId'=>$this->faker->numberBetween(1,100),
            'bookId'=>$this->faker->numberBetween(1,500),
            'takenDate'=>$date3,  // drugi seed, kad dodajem knjige koje nisu vracene
          //  'broughtDate'=>$date2,  Dva puta seed, jednom sa ovom linijom jednom bez, kako bi dobio i knjige koje nisu vracene
        ];
    }
}
