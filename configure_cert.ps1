$UmbrellaCert = Get-Content -Path .\CiscoUmbrellaRoot.cer -Raw
Write-Output $UmbrellaCert
Add-Content -Path "C:\Program Files\Python39\Lib\site-packages\certifi\cacert.pem" -Value $UmbrellaCert
