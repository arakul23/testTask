<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Http\Requests\UserStoreRequest;
use App\Http\Requests\UserUpdateRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\JsonResponse;
use App\Http\Filter\QueryFilter;

class UserController extends Controller
{
    public function index(Request $request, QueryFilter $filter)
    {
        $query = DB::table('users');
        $query = $filter->filter($query, $request);

        return $query;
    }

    public function show(User $user): JsonResponse
    {
        return response()->json($user, 200);

    }

    public function store(UserStoreRequest $request) : JsonResponse
    {
        $data = $request->validated();
        $data['password'] = Hash::make($data['password']);

        $user = User::create($data);

        return response()->json($user, 201);
    }

    public function update(UserUpdateRequest $request, User $user) : JsonResponse
    {
        $user->update($request->validated());

        return response()->json($user, 200);
    }

    public function delete(User $user): JsonResponse
    {
        $user->delete();

        return response()->json(null, 204);
    }

}
