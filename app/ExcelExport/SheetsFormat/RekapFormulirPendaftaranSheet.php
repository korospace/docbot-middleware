<?php

namespace App\ExcelExport\SheetsFormat;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithStrictNullComparison;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Style\Border;

class RekapFormulirPendaftaranSheet implements FromArray, WithHeadings, WithTitle, ShouldAutoSize, WithColumnFormatting, WithMapping, WithStrictNullComparison, WithEvents
{
    protected $rows;
    protected $newTitle;

    public function __construct(array $rows, string $title)
    {
        $this->rows     = $rows;
        $this->newTitle = $title;
    }

    public function map($row): array
    {
        return [
            $row['nnama_lengkap'],
            $row['nidpendaftaran'],
            $row['nnotelp'],
            $row['nharga_formulir'],
            $row['created_at'],
        ];
    }

    public function headings(): array
    {
        return [
            'Nama',
            'No. Pendaftaran',
            'No. Telp',
            'Harga Formulir',
            'Tanggal',
        ];
    }

    public function array(): array
    {
        return $this->rows;
    }

    public function title(): string
    {
        return $this->newTitle;
    }

    public function columnFormats(): array
    {
        return [
            'D' => '#,##0',
        ];
    }

    /**
     * Write code on Method
     *
     * @return response()
     */
    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function(AfterSheet $event) {
   
                /* align text - horizontal */
                $event->sheet->getDelegate()->getStyle('A1:E1')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('B')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('C')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('E')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('A1:E1')
                    ->getFont()
                    ->setBold(true);

                /* Background cell */
                $event->sheet->getStyle('A1:E1')->getFill()->applyFromArray(['fillType' => 'solid','rotation' => 0, 'color' => ['rgb' => 'D9D9D9'],]);
            },
        ];
    }
}