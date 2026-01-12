$backBtn = '<div style="margin-top: 30px; text-align: center;"><a href="index.html" style="display: inline-block; padding: 10px 15px; background-color: #007bff; color: white; text-decoration: none; border-radius: 4px;" onmouseover="this.style.backgroundColor=''#0056b3''" onmouseout="this.style.backgroundColor=''#007bff''">← Back to Dashboard</a></div></body>'

$files = @(
    'conventional_hand_shoulder_position_speed_take1.html',
    'conventional_t8_back_position_speed_take1.html',
    'ras_hand_shoulder_position_speed_take3.html',
    'ras_t8_back_position_speed_take3.html'
)

foreach ($file in $files) {
    $content = Get-Content $file -Raw
    $content = $content -replace '</body>', $backBtn
    Set-Content $file -Value $content
    Write-Host "Added back button to: $file"
}
