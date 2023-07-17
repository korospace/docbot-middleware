<?php

namespace App\Http\Controllers;

use App\Http\Requests\ApiMiddlewareRequest;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
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
        $arrHeader['Accept']       = 'application/json'; 
        $arrHeader['Content-Type'] = 'multipart/form-data'; 
        
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

                return response()->json(json_decode($response->body()), $response->status());
            }
            elseif (count($_FILES) > 0) {
                // ambil nama file foto
                $fileName = $_FILES['file']['name'];
                // Menggabungkan $userId dan $files menjadi satu string dalam format multipart/form-data
                $postData = '';
                // Menambahkan nilai $userId ke dalam payload
                $postData .= "-----011000010111000001101001\r\n";
                $postData .= "Content-Disposition: form-data; name=\"employeeid\"\r\n\r\n";
                $postData .= "hehe\r\n";
                // Menambahkan file dari $files ke dalam payload
                $postData .= "-----011000010111000001101001\r\n";
                $postData .= "Content-Disposition: form-data; name=\"file\"; filename=\"$fileName\"\r\n";
                $postData .= "Content-Type: " . $_FILES['file']['type'] . "\r\n\r\n";
                $postData .= file_get_contents($_FILES['file']['tmp_name']) . "\r\n";
                // Menambahkan penutup payload
                $postData .= "-----011000010111000001101001--\r\n";
                // Mendefinisikan URL endpoint Flask
                $url = $targetUrl;
                // Membuat objek cURL
                $ch = curl_init();
                // Mengatur opsi cURL
                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
                curl_setopt($ch, CURLOPT_HTTPHEADER, [
                    "content-type: multipart/form-data; boundary=---011000010111000001101001"
                ]);
                // Menjalankan request cURL dan mendapatkan responsenya
                $result = curl_exec($ch);
                $result = json_decode($result);
                $result_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);

                return response()->json($result, $result_code);
            }
            else {
                $response = Http::asForm()
                    ->withHeaders($arrHeader)
                    ->post($targetUrl, $requestAll);

                return response()->json(json_decode($response->body()), $response->status());
            }
        } catch (Exception $th) {
            return response()->json($th->getMessage(), 500);
        }
    }
}
