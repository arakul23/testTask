<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\CommentStoreRequest;
use App\Http\Requests\CommentUpdateRequest;
use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Response;

class CommentController extends Controller
{
    public function index(Post $post)
    {
        $post->load('comment.replies');

        return $post->comment;
    }

    public function show(Post $post, Comment $comment)
    {
        return Comment::with('replies')->where('post_id', $post->id)->where('id', $comment->id)->get();
    }

    public function store(CommentStoreRequest $request, Post $post) : \Illuminate\Http\JsonResponse
    {
        $data = $request->validated();
        $data['post_id'] = $post->id;
        $data['user_id'] = User::all()->random()->id;

        $comment = Comment::create($data);

        return response()->json($comment, 201);
    }

    public function update(CommentUpdateRequest $request, Post $post, Comment $comment) : \Illuminate\Http\JsonResponse
    {
        $data = $request->validated();
        $data['parent_id'] = Comment::all()->random()->id;

        $comment->update($data);

        return response()->json($comment, 200);
    }

    public function delete(Post $post, Comment $comment) : \Illuminate\Http\JsonResponse
    {
        $comment->delete();

        return response()->json(null, 204);
    }

}
