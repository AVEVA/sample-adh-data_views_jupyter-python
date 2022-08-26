$UmbrellaCert = Get-Content -Path .\CiscoUmbrellaRoot.cer
Add-Content -Path "C:\Program Files\Python39\Lib\site-packages\certifi\cacert.pem" -Value $UmbrellaCert
