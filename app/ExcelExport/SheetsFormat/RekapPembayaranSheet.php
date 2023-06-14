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

class RekapPembayaranSheet implements FromArray, WithHeadings, WithTitle, ShouldAutoSize, WithColumnFormatting, WithMapping, WithStrictNullComparison, WithEvents
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
            $row['nnis'],
            $row['type_pembayaran'],
            $row['total_bepaid'],
            $row['already_paid'],
            isset($row['month1']) ? $row['month1'] : null,
            isset($row['month2']) ? $row['month2'] : null,
            isset($row['month3']) ? $row['month3'] : null,
            isset($row['month4']) ? $row['month4'] : null,
            isset($row['month5']) ? $row['month5'] : null,
            isset($row['month6']) ? $row['month6'] : null,
            isset($row['month7']) ? $row['month7'] : null,
            isset($row['month8']) ? $row['month8'] : null,
            isset($row['month9']) ? $row['month9'] : null,
            isset($row['month10']) ? $row['month10'] : null,
            isset($row['month11']) ? $row['month11'] : null,
            isset($row['month12']) ? $row['month12'] : null,
        ];
    }

    public function headings(): array
    {
        return [
            'Nama',
            'NIS',
            'Tipe Pembayaran',
            'Harus Dibayar',
            'Total',
            'Bulan 1',
            'Bulan 2',
            'Bulan 3',
            'Bulan 4',
            'Bulan 5',
            'Bulan 6',
            'Bulan 7',
            'Bulan 8',
            'Bulan 9',
            'Bulan 10',
            'Bulan 11',
            'Bulan 12',
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
            'C' => '#,##0',
            'D' => '#,##0',
            'E' => '#,##0',
            'F' => '#,##0',
            'G' => '#,##0',
            'H' => '#,##0',
            'I' => '#,##0',
            'J' => '#,##0',
            'K' => '#,##0',
            'L' => '#,##0',
            'M' => '#,##0',
            'N' => '#,##0',
            'O' => '#,##0',
            'P' => '#,##0',
            'Q' => '#,##0',
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
                $event->sheet->getDelegate()->getStyle('A1:Q1')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('A1:Q1')
                    ->getFont()
                    ->setBold(true);

                $event->sheet->getDelegate()->getStyle('A2:Q2')
                    ->getAlignment()
                    ->setHorizontal('center');

                $event->sheet->getDelegate()->getStyle('A2:Q2')
                    ->getFont()
                    ->setBold(true);

                /* merge cell */
                $event->sheet->getDelegate()->mergeCells('A1:A2');
                $event->sheet->getDelegate()->mergeCells('B1:B2');
                $event->sheet->getDelegate()->mergeCells('C1:C2');
                $event->sheet->getDelegate()->mergeCells('D1:D2');
                $event->sheet->getDelegate()->mergeCells('E1:E2');

                /* align text - vertical */
                $event->sheet->getDelegate()->getStyle('A1:A2')
                    ->getAlignment()
                    ->setVertical('center');

                $event->sheet->getDelegate()->getStyle('B1:B2')
                    ->getAlignment()
                    ->setVertical('center');

                $event->sheet->getDelegate()->getStyle('C1:C2')
                    ->getAlignment()
                    ->setVertical('center');

                $event->sheet->getDelegate()->getStyle('D1:D2')
                    ->getAlignment()
                    ->setVertical('center');

                $event->sheet->getDelegate()->getStyle('E1:E2')
                        ->getAlignment()
                        ->setVertical('center');

                /* Background cell */
                $event->sheet->getStyle('A1:Q1')->getFill()->applyFromArray(['fillType' => 'solid','rotation' => 0, 'color' => ['rgb' => 'D9D9D9'],]);
                $event->sheet->getStyle('A2:Q2')->getFill()->applyFromArray(['fillType' => 'solid','rotation' => 0, 'color' => ['rgb' => 'D9D9D9'],]);

                /* border table */
                // $event->sheet->getStyle('A1:Q1')->applyFromArray([
                //     'borders' => [
                //         'top' => [
                //             'borderStyle' => Border::BORDER_THICK,
                //         ]
                //     ],
                // ]);
                // $event->sheet->getStyle('A2:Q2')->applyFromArray([
                //     'borders' => [
                //         'bottom' => [
                //             'borderStyle' => Border::BORDER_THIN,
                //         ]
                //     ],
                // ]);
                // $event->sheet->getStyle('A1:A2')->applyFromArray([
                //     'borders' => [
                //         'left' => [
                //             'borderStyle' => Border::BORDER_THICK,
                //         ]
                //     ],
                // ]);
                // $event->sheet->getStyle('Q1:Q2')->applyFromArray([
                //     'borders' => [
                //         'right' => [
                //             'borderStyle' => Border::BORDER_THIN,
                //         ]
                //     ],
                // ]);
            },
        ];
    }
}