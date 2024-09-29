<?php

namespace App\Exports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportProducts implements FromCollection, WithHeadings
{

    public function headings():array{
        return[
            'id',
            'name',
            'detail',
        ];
    }

    public function collection()
    {
        return Product::select('id','name','detail')->get();
    }
}
