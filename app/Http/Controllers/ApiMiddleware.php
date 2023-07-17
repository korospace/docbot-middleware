<?php

namespace App\Http\Controllers;

use App\Http\Requests\ApiMiddlewareRequest;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
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

    /**
     * Flexible Method - GET
     * ===========================
     */
    public function flexibleMethodGet(ApiMiddlewareRequest $request): JsonResponse {
        $targetUrl = $request->query('target_url');
        $arrHeader['Accept']       = '*/*'; 
        $arrHeader['Content-Type'] = 'application/x-www-form-urlencoded'; 
        
        foreach ($request->query() as $key => $value) {
            if (preg_match("/headerKey/i", $key)) {
                if (preg_match('/\d+/', $key, $matches)) {
                    $number = $matches[0];

                    $arrHeader[$value] = $request->query("headerValue$number"); 
                }
            }
        }

        try {
            $response = Http::asForm()
                ->withHeaders($arrHeader)
                ->get($targetUrl,[]);
    
            return response()->json(json_decode($response->body()), $response->status());
        } catch (Exception $th) {
            return response()->json($th->getMessage(), 500);
        }
    }

    /**
     * Flexible Method - POST
     * ===========================
     */
    public function flexibleMethodPost(ApiMiddlewareRequest $request): JsonResponse {
        $requestAll = $request->all();
        $targetUrl  = $request->query('target_url');
        $arrHeader['Accept']       = '*/*'; 
        $arrHeader['Content-Type'] = 'application/x-www-form-urlencoded'; 
        
        foreach ($request->query() as $key => $value) {
            if (preg_match("/headerKey/i", $key)) {
                if (preg_match('/\d+/', $key, $matches)) {
                    $number = $matches[0];

                    $arrHeader[$value] = $request->query("headerValue$number"); 
                }
            }
        }

        foreach ($request->query() as $key => $value) {
            unset($requestAll[$key]);
        }

        try {
            $response = "";

            if ($request->isJson()) {
                $response = Http::asJson()
                    ->withHeaders($arrHeader)
                    ->when($request->hasFile('file'), function ($http) use ($request) {
                        return $http->attach('file', $request->file('file'));
                    })
                    ->post($targetUrl, $requestAll);
            }
            else {
                $response = Http::asForm()
                    ->withHeaders($arrHeader)
                    ->when($request->hasFile('file'), function ($http) use ($request) {
                        return $http->attach('file', $request->file('file'));
                    })
                    ->post($targetUrl, $requestAll);
            }
    
            return response()->json(json_decode($response->body()), $response->status());
        } catch (Exception $th) {
            return response()->json($th->getMessage(), 500);
        }
    }

}
