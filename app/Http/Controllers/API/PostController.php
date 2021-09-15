<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostStoreRequest;
use App\Models\Post;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Requests\PostUpdateRequest;
use Illuminate\Support\Facades\Hash;

class PostController extends Controller
{
    public function index(Request $request)
    {
        $query = Post::with('comment.replies');

        if ($request->filled('page') && $request->filled('perpage')) {
            $count = $request->page * $request->perpage;
            $query->skip($count)->take($request->perpage);
        }

        if ($request->filled('sort')) {
            $query->orderBy($request->sort, $request->filled('sorttype') ? $request->sorttype : 'ASC');
        }

        return $query->get();
    }

    public function show(Post $post)  : Post
    {
        $post->load('comment');

        return $post;
    }

    public function store(PostStoreRequest $request) : JsonResponse
    {
        $user = Post::create($request->validated());

        return response()->json($user, 201);
    }

    public function update(PostUpdateRequest $request, Post $post) : JsonResponse
    {
        $post->update($request->validated());

        return response()->json($post, 200);
    }

    public function delete(Post $post) : \Illuminate\Http\JsonResponse
    {
        $post->delete();

        return response()->json(null, 204);
    }


}
