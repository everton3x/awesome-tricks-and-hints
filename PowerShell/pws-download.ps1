# Baixar arquivos

# Não aceita FTP
Invoke-WebRequest "caminho http/https" -OutFile "nome do arquivo.ext"

# Aceita FTP
powershell –c "(new-object System.Net.WebClient).DownloadFile('caminho do download', 'caminho de destino (pasta e arquivo)')"
