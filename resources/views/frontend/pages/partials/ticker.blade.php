<div class="news-container">
    <div class="news-ticker">
        @foreach ($tickers as $i => $data)
            <div class="news-item"># {{ $data->body }}</div>
        @endforeach
    </div>
</div>
