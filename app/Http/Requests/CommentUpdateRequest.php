<?php

namespace App\Http\Requests;

class CommentUpdateRequest extends CommentRequest
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
            'text' => 'string',
            'parent_id' => 'integer'
        ];

        return array_merge(parent::rules(), $rules);
    }
}
