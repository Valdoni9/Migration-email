# Script de Migração de E-mails com IMAPSync

Este script em PowerShell utiliza o `imapsync.exe` para migrar e-mails de um servidor IMAP para outro de forma eficiente.

## Código e Explicação

Aqui está o código principal do script, seguido de uma explicação linha por linha:

```powershell
# Caminho para o executável
$imapsyncPath = "C:\caminho\para\imapsync.exe"

# Lista de e-mails a migrar
$emails = @("user1@example.com", "user2@example.com")

# Senha de acesso
$senha = "senha_do_email"

# Configurações dos servidores
$servidorOrigem = "imap.seudominio.com"
$portaOrigem = 993
$servidorDestino = "imap.dominio.com"
$portaDestino = 993

# Loop para migrar e-mails
foreach ($email in $emails) {
    & $imapsyncPath --host1 $servidorOrigem --user1 $email --password1 $senha `
                     --ssl1 --port1 $portaOrigem `
                     --host2 $servidorDestino --user2 $email --password2 $senha `
                     --ssl2 --port2 $portaDestino
    Write-Host "Migração concluída para: $email"
}

Explicação do Código
Definição do Caminho do Executável:

powershell
Copiar código
$imapsyncPath = "C:\caminho\para\imapsync.exe"
Esta linha define a variável $imapsyncPath, que contém o caminho para o executável imapsync.exe. É necessário especificar onde o programa está localizado para que o script possa chamá-lo.
Lista de E-mails a Migrar:

powershell
Copiar código
$emails = @("user1@example.com", "user2@example.com")
Aqui, criamos um array $emails que contém os endereços de e-mail que desejamos migrar. Você pode adicionar quantos e-mails quiser.


*********************************1
Definição da Senha:
powershell
Copiar código
$senha = "senha_do_email"
Esta linha define a variável $senha, que armazena a senha a ser usada para autenticar os e-mails durante a migração. É importante manter essa informação segura.
*********************************


*********************************2
Configurações do Servidor de Origem:
powershell
Copiar código
$servidorOrigem = "imap.seudominio.com"
$portaOrigem = 993
$servidorOrigem especifica o endereço do servidor de e-mail de origem. $portaOrigem define a porta utilizada para a conexão, que é 993, o padrão para IMAP sobre SSL.
*********************************

*********************************3
Configurações do Servidor de Destino:
powershell
Copiar código
$servidorDestino = "imap.dominio.com"
$portaDestino = 993
Similar à origem, $servidorDestino é o endereço do servidor para o qual os e-mails serão migrados, e $portaDestino também é 993.
*********************************

*********************************4
Loop para Migrar E-mails:
powershell
Copiar código
foreach ($email in $emails) {
Este foreach inicia um loop que irá iterar por cada endereço de e-mail na lista $emails.
*********************************

*********************************5
Chamada do IMAPSync:
powershell
Copiar código
& $imapsyncPath --host1 $servidorOrigem --user1 $email --password1 $senha `
                 --ssl1 --port1 $portaOrigem `
                 --host2 $servidorDestino --user2 $email --password2 $senha `
                 --ssl2 --port2 $portaDestino
Esta linha chama o executável imapsync.exe com os parâmetros necessários para a migração.
--host1, --user1, --password1: informações do servidor de origem.
--host2, --user2, --password2: informações do servidor de destino.
--ssl1, --ssl2: indica que a conexão deve ser feita usando SSL.
--port1, --port2: especifica as portas de conexão.
}
*********************************

Mensagem de Conclusão da Migração:
powershell
Copiar código
Write-Host "Migração concluída para: $email"
Após a migração de cada e-mail - 
Esta linha imprime uma mensagem no console informando que a migração foi concluída para o e-mail atual.
