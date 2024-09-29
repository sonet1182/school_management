<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ID Card</title>
        <style>
        body {
            font-family: Arial, sans-serif;
        }
        .id-card {
            width: 196px;
            height: 317px;
            border: 2px solid #333;
            border-radius: 10px;
            padding: 15px;
            background-color: #f4f4f4;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .id-card .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .id-card .header img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }
        .id-card .header .company-name {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            flex-grow: 1;
        }
        .id-card .profile-picture {
            text-align: center;
            margin-top: 30px;
        }
        .id-card .profile-picture img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 2px solid #0f5132;
        }
        .id-card .details {
            margin-top: 10px;
            text-align: center;
        }
        .id-card .details .name {
            font-size: 16px;
            font-weight: bold;
        }
        .id-card .details .role {
            font-size: 16px;
            color: #555;
        }
        .id-card .details .id-number {
            font-size: 14px;
            margin-top: 5px;
            color: #777;
        }
        .id-card .footer {
            text-align: center;
            margin-top: 40px;
        }
        .id-card .footer .expiry-date {
            font-size: 12px;
            color: #999;
        }
    </style>
    </head>
    <body>
        <div class="id-card">
            <div class="header">
                <div class="company-name">BD Community</div>
            </div>
            <div class="profile-picture">
                <img src="{{ $src }}" alt="Profile Picture" style="width: 100px; height: 100px; border-radius: 50%" />
            </div>
            <div class="details">
                <div class="name">{{ $name }}</div>
                <div class="id-number">Id: {{ $submission->card_id }}</div>
                <div class="id-number">Phone: {{ $phone }}</div>
                <div class="institute">Institute: {{ $institute }}</div>
                <div class="role">Blood Group: {{ $bloodGroup }}</div>
            </div>
            <div class="footer">
                <div class="expiry-date">Valid until: 12/31/2024</div>
            </div>
        </div>

        <div class="id-card" style="margin-top: 15px">
            <div class="header">
                <div class="company-name">BD Community</div>
            </div>
            <div class="profile-picture">
                <div class="qr-code">
                    <img src="{{ $url }}" alt="QR Code">
                </div>
            </div>
            <div class="details">
            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
