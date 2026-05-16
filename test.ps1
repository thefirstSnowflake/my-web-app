# test.ps1
Write-Host "Running tests..."

# Проверяем, существует ли файл index.html
if (Test-Path "index.html") {
    Write-Host "OK: index.html found."
    
    # Проверяем, есть ли в файле слово Hello
    $content = Get-Content "index.html"
    if ($content -match "Hello") {
        Write-Host "SUCCESS: Content check passed!"
        exit 0
    } else {
        Write-Host "FAIL: 'Hello' not found in file."
        exit 1
    }
} else {
    Write-Host "FAIL: index.html missing!"
    exit 1
}