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
        $post = Post::all();
        $user = User::all();

        for ($i = 0; $i < 10; $i++) {
            Comment::create([
                'text' => $faker->text,
                'post_id' => $post->random()->id,
                'user_id' => $user->random()->id,
                'parent_id' => null,
            ]);
        }

        $comment = Comment::all();

        for ($i = 0; $i < 10; $i++) {
            Comment::create([
                'text' => $faker->text,
                'post_id' => $post->random()->id,
                'user_id' =>$user->random()->id,
                'parent_id' => $comment->random()->id,
            ]);
        }
    }
}
