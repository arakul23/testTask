<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Http\Requests\UserRequest;

class UserStoreRequest extends UserRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() : bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() : array
    {
        $rules = [
            'name' => 'required|min:3|max:20|string',
            'email' => 'required|email',
            'password' => 'required|min:6|string'
        ];

        return array_merge(parent::rules(), $rules);
    }
}
