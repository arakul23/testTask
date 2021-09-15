<?php

namespace App\Http\Requests;

class UserUpdateRequest extends UserRequest
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
            'name' => 'string',
            'email' => 'email',
            'password' => 'string'
        ];

        return array_merge(parent::rules(), $rules);
    }
}
