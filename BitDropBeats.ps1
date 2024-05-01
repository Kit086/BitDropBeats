$threshold = $args[0]
$sleepInterval = $args[1]
$url = "https://api.coinlore.net/api/ticker/?id=90"

while ($true) {
    $response = Invoke-RestMethod -Uri $url -Method Get -Headers @{"Accept" = "application/json" }
    $percentChange1h = $response.percent_change_1h
    $priceUsd = $response.price_usd

    $currentTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    if ([double]$percentChange1h -le [double]$threshold) {
        Write-Host "$currentTime - Bitcoin price has dropped ($percentChange1h%) more than $threshold% to $priceUsd USD, playing music."

        $musicPath = ".\beat.wav"

        Add-Type -AssemblyName PresentationCore
        $soundPlayer = New-Object System.Media.SoundPlayer $musicPath
        $soundPlayer.PlaySync()
    }
    else {
        Write-Host "$currentTime - Bitcoin price is $priceUsd USD, with a change of $percentChange1h%, which does not exceed the threshold of $threshold%, no music played."
    }

    Start-Sleep -Seconds $sleepInterval
}
