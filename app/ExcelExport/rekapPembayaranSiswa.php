<?php

namespace App\ExcelExport;

use App\ExcelExport\SheetsFormat\RekapFormulirPendaftaranSheet;
use App\ExcelExport\SheetsFormat\RekapPembayaranSheet;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class rekapPembayaranSiswa implements FromArray, WithMultipleSheets
{
    protected $sheets;

    public function __construct(array $sheets)
    {
        $this->sheets = $sheets;
    }

    public function array(): array
    {
        return $this->sheets;
    }

    public function sheets(): array
    {
        $sheets = [
            new RekapFormulirPendaftaranSheet($this->sheets['formulir'],'Formulir'),
            new RekapPembayaranSheet($this->sheets['ppdb'],'PPDB'),
            new RekapPembayaranSheet($this->sheets['spp'],'SPP'),
            new RekapPembayaranSheet($this->sheets['assanah'],'Assanah'),
            new RekapPembayaranSheet($this->sheets['komite'],'Komite'),
            new RekapPembayaranSheet($this->sheets['kbm'],'KBM'),
            new RekapPembayaranSheet($this->sheets['paket_buku'],'Buku Paket'),
            new RekapPembayaranSheet($this->sheets['paket_seragam'],'Buku Seragam'),
            new RekapPembayaranSheet($this->sheets['pengembangansekolah'],'Pengembangan Sekolah'),
        ];

        return $sheets;
    }

}