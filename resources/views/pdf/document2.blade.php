<html>

{{-- This will be download from Create Page --}}

<head>
    <style>
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            margin: 0;
            padding-top: 600px !important;
        }
    </style>
</head>

<body>
    <div style="padding-top: 90px">

        <div
            style="max-width: 800px; margin: auto; padding: 16px;border: 1px solid #eee;font-size: 16px;line-height: 24px;font-family: 'Inter', sans-serif;color: #555;background-color: #F9FAFC;">
            <table style="font-size: 12px; line-height: 20px;">
                <tbody>
                    <tr>
                        <td>
                            <table
                                style="background-color: #FFF; padding: 20px 20px; border: 1px solid #D7DAE0;width: 100%; border-radius: 12px;font-size: 12px; line-height: 20px; table-layout: fixed;">
                                <tbody>
                                    <tr>
                                        <td
                                            style="vertical-align: top; width: 40%; padding-right: 20px;padding-bottom: 35px;">
                                            <table style="table-layout: fixed;width:-webkit-fill-available;">
                                                <tr>
                                                    <th style="text-align: left; color: #1A1C21;">ID</th>
                                                    <td style="text-align: right;">{{ $receipt_id }}</td>
                                                </tr>
                                                <tr>
                                                    <th style="text-align: left; color: #1A1C21;">Name</th>
                                                    <td style="text-align: right;">{{ $receipt->pdf_patientName }}</td>
                                                </tr>
                                                <tr>
                                                    <th style="text-align: left; color: #1A1C21;">Phone</th>
                                                    <td style="text-align: right;">{{ $receipt->pdf_patientPhone }}</td>
                                                </tr>
                                                <tr>
                                                    <th style="text-align: left; color: #1A1C21;">Age</th>
                                                    <td style="text-align: right;">{{ $receipt->pdf_patientAge ?? '-' }}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th style="text-align: left; color: #1A1C21;">Sex</th>
                                                    <td style="text-align: right;">
                                                        {{ $receipt->pdf_patientGender ?? '-' }}
                                                    </td>
                                                </tr>

                                            </table>
                                        </td>
                                        <td
                                            style="vertical-align: top; width: 20%; padding-right: 20px;padding-bottom: 35px;">
                                        </td>
                                        <td
                                            style="vertical-align: top; width: 40%; padding-right: 20px;padding-bottom: 35px;">
                                            <table style="table-layout: fixed;width:-webkit-fill-available;">

                                                @if ($receipt->pdf_doctorName)
                                                    <tr>
                                                        <th style="text-align: left; color: #1A1C21;">Ref. Doctor Name:
                                                        </th>
                                                        <td style="text-align: right;">{{ $receipt->pdf_doctorName }}
                                                        </td>
                                                    </tr>
                                                @endif

                                                @if ($receipt->pdf_doctorRoom)
                                                    <tr>
                                                        <th style="text-align: left; color: #1A1C21;">Room Number:</th>
                                                        <td style="text-align: right;">{{ $receipt->pdf_doctorRoom }}
                                                        </td>
                                                    </tr>
                                                @endif

                                                @if ($receipt->pdf_reference)
                                                    <tr>
                                                        <th style="text-align: left; color: #1A1C21;">Reference:</th>
                                                        <td style="text-align: right;">{{ $receipt->pdf_reference }}
                                                        </td>
                                                    </tr>
                                                @endif
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-bottom: 13px;">
                                            <p style="color: #5E6470;">Patient Type </p>
                                            <p style="font-weight: 700; color: #1A1C21;">{{ $receipt->pdf_patientType }}
                                            </p>
                                        </td>
                                        <td style="text-align: center; padding-bottom: 13px;">
                                            <p style="color: #5E6470;">Invoice number</p>
                                            <p style="font-weight: 700; color: #1A1C21;">#AB2324-{{ $receipt_id }}</p>
                                        </td>
                                        <td style="text-align: right; padding-bottom: 13px;">
                                            <p style="color: #5E6470;">Invoice date</p>
                                            <p style="font-weight: 700; color: #1A1C21;">
                                                {{ now()->format('d M, Y') }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <table style="width: 100%;border-spacing: 0;">
                                                <thead>
                                                    <tr style="text-transform: uppercase;">
                                                        <td style="padding: 8px 0; border-block:1px solid #D7DAE0;">Name
                                                        </td>
                                                        <td
                                                            style="padding: 8px 0; border-block:1px solid #D7DAE0; width: 100px;">
                                                            Fee
                                                        </td>
                                                        <td
                                                            style="padding: 8px 0; border-block:1px solid #D7DAE0; text-align: end; width: 100px;">
                                                            Discount</td>
                                                        <td
                                                            style="padding: 8px 0; border-block:1px solid #D7DAE0; text-align: right; width: 120px;">
                                                            Payment</td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach (json_decode($receipt->pdf_items, true) as $item)
                                                        <tr>
                                                            <td style="padding-block: 12px;">
                                                                <p style="font-weight: 700; color: #1A1C21;">
                                                                    {{ htmlspecialchars($item['name']) }}</p>
                                                            </td>
                                                            <td style="padding-block: 12px;">
                                                                <p style="font-weight: 700; color: #1A1C21;">
                                                                    {{ number_format($item['fee'], 2) }}</p>
                                                            </td>
                                                            <td style="padding-block: 12px; text-align: end;">
                                                                <p style="font-weight: 700; color: #1A1C21;">
                                                                    {{ $item['totalDiscount'] }} %</p>
                                                            </td>
                                                            <td style="padding-block: 12px; text-align: right;">
                                                                <p style="font-weight: 700; color: #1A1C21;">
                                                                    {{ number_format($item['payment'], 2) }} Tk</p>
                                                            </td>
                                                        </tr>
                                                    @endforeach

                                                    <tr>
                                                        <td colspan="4">
                                                            <hr>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px; text-align: end;"
                                                            col-span="1">
                                                            Total Fee:</td>
                                                        <td style="padding-block: 12px; text-align: right;"
                                                            col-span="1">
                                                            {{ number_format($receipt->pdf_totalPrice, 2) }} Tk
                                                        </td>
                                                    </tr>

                                                    @if ($receipt->pdf_couponDiscount)
                                                        <tr>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px; text-align: end;"
                                                                col-span="1">
                                                                Discount:</td>
                                                            <td style="padding-block: 12px; text-align: right;"
                                                                col-span="1">
                                                                {{ number_format($receipt->pdf_couponDiscount, 2) }} Tk
                                                            </td>
                                                        </tr>
                                                    @endif


                                                    <tr>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px; text-align: end;"
                                                            col-span="1">
                                                            Total VAT (15%):</td>
                                                        <td style="padding-block: 12px; text-align: right;"
                                                            col-span="1">
                                                            {{ number_format($receipt->pdf_totalVat, 2) }} Tk
                                                        </td>
                                                    </tr>

                                                    @if ($receipt->pdf_additionalCheckbox > 0)
                                                        <tr>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px; text-align: end;"
                                                                col-span="1">
                                                                Needle:</td>
                                                            <td style="padding-block: 12px; text-align: right;"
                                                                col-span="1">
                                                                {{ number_format($receipt->pdf_additionalCheckbox, 2) }} Tk
                                                            </td>
                                                        </tr>
                                                    @endif

                                                    @if ($receipt->pdf_additionalCheckbox2 > 0)
                                                        <tr>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px; text-align: end;"
                                                                col-span="1">
                                                                Red Tube:</td>
                                                            <td style="padding-block: 12px; text-align: right;"
                                                                col-span="1">
                                                                {{ number_format($receipt->pdf_additionalCheckbox2, 2) }} Tk
                                                            </td>
                                                        </tr>
                                                    @endif

                                                    @if ($receipt->pdf_additionalInput && $receipt->pdf_additionalInput > 0)
                                                        <tr>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px;" col-span="1"></td>
                                                            <td style="padding-block: 12px; text-align: end;"
                                                                col-span="1">
                                                                Others:</td>
                                                            <td style="padding-block: 12px; text-align: right;"
                                                                col-span="1">
                                                                {{ number_format($receipt->pdf_additionalInput, 2) }} Tk
                                                            </td>
                                                        </tr>
                                                    @endif

                                                    <tr>
                                                        <td colspan="2"></td>
                                                        <td colspan="2">
                                                            <hr>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px;" col-span="1"></td>
                                                        <td style="padding-block: 12px; text-align: end;"
                                                            col-span="1">
                                                            Bill:</td>
                                                        <td style="padding-block: 12px; text-align: right;"
                                                            col-span="1">
                                                            {{ number_format($receipt->pdf_finalPrice, 2) }} Tk
                                                        </td>
                                                    </tr>

                                                </tbody>

                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</body>

</html>
