<?php

use Illuminate\Http\UploadedFile;
use Shuchkin\SimpleXLS;
use Shuchkin\SimpleXLSX;
use SimpleCSV as SimpleCSV;

/**
 * Hide property with null value.
 *
 * @param array $data
 * @return Array
 */
function removeNullValues(array $data): array
{
    $filtered_data = [];
    foreach ($data as $key => $value) {
        if (is_array($value))
        {
            if (sizeof($value) > 0)
                $filtered_data[$key] = removeNullValues($value);
        }
        else if ($value != null || $value == 0){
            $filtered_data[$key] = $value;
        }
    }

    return $filtered_data;
}

/**
* Get the path to the public folder.
*
* @param  string $path
* @return string
*/
function public_path($path = '')
{
    return env('PUBLIC_PATH', base_path('public')) . ($path ? '/' . $path : $path);
}

/**
 * Hide property with null value.
 *
 * @param UploadedFile $file
 * @return Array
 */
function parseExcel(UploadedFile $file): array
{
    $fileType = $file->extension();

    if ($fileType == "xlsx") {
        $excelRawData = SimpleXLSX::parse($file->getRealPath());
        $excelRawData = $excelRawData->rows();
    }
    else if ($fileType == "xls") {
        $excelRawData = SimpleXLS::parse($file->getRealPath());
        $excelRawData = $excelRawData->rows();
    }
    else if ($fileType == "csv") {
        $excelRawData = SimpleCSV::import($file->getRealPath());
    }

    $header_values = $rows1 = [];
        
    foreach ( $excelRawData as $k => $r ) {
        if ( $k === 0 ) {
            $header_values = $r;
            continue;
        }

        if(count($header_values) == count($r)){
            $rows1[] = array_combine( $header_values, $r );
        }
    }

    return $rows1;
}

/**
 * Method Parser.
 * 
 * @param string $variableName
 */
function _methodParser(string $variableName): void
{
    // global $_PUT;

    $putdata  = fopen("php://input", "r");
    $raw_data = '';

    while ($chunk = fread($putdata, 1024))
        $raw_data .= $chunk;

    fclose($putdata);

    $boundary = substr($raw_data, 0, strpos($raw_data, "\r\n"));

    if(empty($boundary)){
        parse_str($raw_data,$data);
        $GLOBALS[ $variableName ] = $data;
        return;
    }

    $parts = array_slice(explode($boundary, $raw_data), 1);
    $data  = array();

    foreach ($parts as $part) {
        if ($part == "--\r\n") break;

        $part = ltrim($part, "\r\n");
        list($raw_headers, $body) = explode("\r\n\r\n", $part, 2);

        $raw_headers = explode("\r\n", $raw_headers);
        $headers = array();
        foreach ($raw_headers as $header) {
            list($name, $value) = explode(':', $header);
            $headers[strtolower($name)] = ltrim($value, ' ');
        }

        if (isset($headers['content-disposition'])) {
            $filename = null;
            $tmp_name = null;
            preg_match(
                '/^(.+); *name="([^"]+)"(; *filename="([^"]+)")?/',
                $headers['content-disposition'],
                $matches
            );
            
            if(count($matches) !== 0){
                list(, $type, $name) = $matches;
            }

            if( isset($matches[4]) )
            {
                if( isset( $_FILES[ $matches[ 2 ] ] ) )
                {
                    continue;
                }

                $filename       = $matches[4];
                $filename_parts = pathinfo( $filename );
                $tmp_name       = tempnam( ini_get('upload_tmp_dir'), $filename_parts['filename']);

                $_FILES[ $matches[ 2 ] ] = array(
                    'error'=>0,
                    'name'=>$filename,
                    'tmp_name'=>$tmp_name,
                    'size'=>strlen( $body ),
                    'type'=>preg_replace('/\s+/', '', $value)
                );

                file_put_contents($tmp_name, $body);
            }
            else
            {
                $data[$name] = substr($body, 0, strlen($body) - 2);
            }
        }

    }
    $GLOBALS[ $variableName ] = $data;
    return;
}