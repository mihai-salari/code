<?php
require_once '../vendor/fzaninotto/faker/src/autoload.php';

/*
	Create example user data for database seeding, without the
	use of Lavarel's Eloquent ORM.
*/

$faker = Faker\Factory::create();

for ($i = 0; $i < 10; $i++) {
	echo $faker->name, "<br />";
	echo $faker->email, "<br />";
	echo $i === 0 ? true : $faker->boolean, "<br />";
	echo $faker->randomElement(['male', 'female', 'other']), "<br />";
	echo $faker->numberBetween(-10, 10), "<br />";
	//echo $faker->dateTimeBetween('-40 years', '-18 years')
	echo $faker->boolean ? "{$faker->city}, {$faker->state}" : null, "<br />";
	echo $faker->sentence(100), "<br />";
	echo "<hr />";
}
?>