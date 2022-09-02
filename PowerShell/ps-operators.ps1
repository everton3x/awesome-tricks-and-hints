# Operador	    Definição
# -eq	          Igual a
# -ne	          É diferente de
# -gt	          Maior que
# -ge	          Maior que ou igual a
# -lt	          Menor que
# -le	          Menor que ou igual a
# -Like	        Corresponde à expressão usando o caractere curinga * e ?
# -NotLike	    Não corresponde à expressão usando o caractere curinga * e ?
# -Match	      Corresponde à expressão regular especificada
# -NotMatch	    Não corresponde à expressão regular especificada
# -Contains	    Determina se uma coleção contém um valor especificado
# -NotContains	Determina se uma coleção não contém um valor específico
# -In	          Determina se um valor especificado está em uma coleção
# -NotIn	      Determina se um valor especificado não está em uma coleção
# -Replace	    Substitui o valor especificado

# Todos os operadores listados na Tabela 5-1 não diferenciam maiúsculas de minúsculas.
# Coloque um c na frente do operador para fazer com que ele diferencie maiúsculas de minúsculas.
# Por exemplo, -ceq é a versão que diferencia maiúsculas de minúsculas do operador de comparação -eq.

'PowerShell' -eq 'powershell'
# True

'PowerShell' -ceq 'powershell'
# False

'PowerShell' -like '*shell'
# True

'PowerShell' -match '^*.shell$'
# True

# Use o operador de intervalo para armazenar os números 1 a 10 em uma variável.
$Numbers = 1..10

'PowerShell' -replace 'Shell'
# Power


# O operador -Replace não diferencia maiúsculas de minúsculas por padrão, ao contrário do método Replace().
'SQL Saturday - Baton Rouge' -Replace 'saturday','Sat'
# SQL Sat - Baton Rouge

'SQL Saturday - Baton Rouge'.Replace('saturday','Sat')
# SQL Saturday - Baton Rouge
