<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class CommentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            Comment::create([
                'text' => $faker->text,
                'post_id' => Post::all()->random()->id,
                'user_id' => User::all()->random()->id,
                'parent_id' => null,
            ]);
        }


        for ($i = 0; $i < 10; $i++) {
            Comment::create([
                'text' => $faker->text,
                'post_id' => Post::all()->random()->id,
                'user_id' => User::all()->random()->id,
                'parent_id' => Comment::all()->random()->id,
            ]);
        }
    }
}
