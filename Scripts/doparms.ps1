param(
[string]$environement="dev",
[string]$client="wj",
[string]$product="deicingmanager"
)

cd $PSScriptRoot

$jsondata=Get-Content -Path .\azuredeploy2.json -Raw

$jsondata = ($jsondata -replace '%%product%%', $product)
$jsondata = ($jsondata -replace '%%clientinit%%', $client)
$jsondata = ($jsondata -replace '%%env%%', $environement)
set-content .\azuredeploy.json -Value $jsondata