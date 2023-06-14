<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\BadResponseException;
use Illuminate\Support\Facades\Http;

class ApiMiddleware extends Controller
{

    public function getMessage(Request $request) : JsonResponse {

        /**
         * CreateHeader
         */
        $arrHeader = [ 
            'Accept'      => '*/*', 
            'token'       => $request->header('token'), 
            'Content-Type'=> 'application/x-www-form-urlencoded', 
        ];

        /**
         * CURL
         */
        $targetUrl = $request->query('target_url');

        try {
            $response = Http::asForm() 
            ->withHeaders($arrHeader) 
            ->get($targetUrl,[ 
            ]); 

            return response()->json(json_decode($response->body()), $response->status());
        } 
        catch (Exception $th) {
            return response()->json($th->getMessage(), 500);
        }

    }

    public function sendMessage(Request $request) : JsonResponse {
        /**
         * CreateHeader
         */
        $arrHeader = [ 
            'Accept'      => '*/*', 
            'token'       => $request->header('token'), 
            'Content-Type'=> 'application/x-www-form-urlencoded', 
        ];

        /**
         * CURL
         */
        $targetUrl = $request->query('target_url');

        try {
            $response = Http::asForm() 
            ->withHeaders($arrHeader) 
            ->post($targetUrl, $request->post()); 

            return response()->json(json_decode($response->body()), $response->status());
        } 
        catch (Exception $th) {
            return response()->json($th->getMessage(), 500);
        }
    }

}
