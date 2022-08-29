# Comandos de uma linha lógica quebrados em várias linhas físicas
Get-Service |
  Where-Object CanPauseAndContinue -eq $true |
    Select-Object -Property *
    
  # Isto não é um comando separado. São dois comandos, na mesma linha física
  $Service = 'w32time'; Get-Service -Name $Service
