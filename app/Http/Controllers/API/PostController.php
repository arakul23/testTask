<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostStoreRequest;
use App\Models\Post;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Requests\PostUpdateRequest;
use App\Http\Filter\QueryFilter;

class PostController extends Controller
{
    public function index(Request $request, QueryFilter $filter)
    {
        $query = Post::with('comment.replies');
        $query = $filter->filter($query, $request);

        return $query;
    }

    public function show(Post $post)  : JsonResponse
    {
        $post->load('comment');

        return response()->json($post, 200);
    }

    public function store(PostStoreRequest $request) : JsonResponse
    {
        $post = Post::create($request->validated());

        return response()->json($post, 201);
    }

    public function update(PostUpdateRequest $request, Post $post) : JsonResponse
    {
        $post->update($request->validated());

        return response()->json($post, 200);
    }

    public function delete(Post $post) : JsonResponse
    {
        $post->delete();

        return response()->json(null, 204);
    }


}
