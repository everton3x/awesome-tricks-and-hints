Get-Help

# Exibe a ajuda para Get-Command
Get-Help -Name Get-Command
Get-Help -Name Get-Command -Full

# Exibe a ajuda paginada
Help -Name Get-Command
Help -Name Get-Command -Full

# Mostra a ajuda do parâmetro Name de Get-Help
Help -Name Get-Help -Parameter Name

# Outras opções disponíveis
Get-Help -Name Get-Command -Detailed
Get-Help -Name Get-Command -Examples
Get-Help -Name Get-Command -Online
help Get-Command -Full | Out-GridView

# Busca coringa
Help -Name Move-*
Help *-process

# Lista todos os comandos
Get-Command

# Lista os comandos que contém "command" (busca pelo substantivo)
Get-Command -Noun command

# Busca pelo nome
Get-Command -Noun *command*

# Aceita coringas
Get-Command -Noun *command*

# Descobre o alias (também aceita coringas)
Get-Command -Name dir

# Atualizando a ajuda
Update-Help
