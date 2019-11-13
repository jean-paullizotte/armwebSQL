param(
[string]$environement="dev",
[string]$client="wj",
[string]$product="deicingmanager"
)

cd $PSScriptRoot

$jsondata=Get-Content -Path .\Templates\azuredeploy2.json -Raw

$jsondata = ($jsondata -replace '%%product%%', $product)
$jsondata = ($jsondata -replace '%%clientinit%%', $client)
$jsondata = ($jsondata -replace '%%env%%', $environement)
set-content .\Templates\azuredeploy.json -Value $jsondata