$UmbrellaCert = Get-Content -Path .\CiscoUmbrellaRoot.cer -Raw
Add-Content -Path "C:\Program Files\Python39\Lib\site-packages\certifi\cacert.pem" -Value $UmbrellaCert
$PEMFile = Get-Content -Path "C:\Program Files\Python39\Lib\site-packages\certifi\cacert.pem"
Write-Output $PEMFile
