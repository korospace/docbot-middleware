<?php

namespace App\Http\Requests;

use Anik\Form\FormRequest;
use Illuminate\Http\JsonResponse;

class ApiMiddlewareRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    protected function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    protected function rules(): array
    {
        return [
            'target_url'  => 'required',
        ];
    }

    /**
     * OVERIDE
     * =================================
     */
    protected function messages(): array
    {
        return [
            'required' => ':attribute is required',
        ];
    }

    protected function errorResponse(): ?JsonResponse
    {
        return response()->json($this->validator->errors()->messages(), 400);
    }
}
