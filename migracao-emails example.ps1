﻿# Definir a codificação do console para UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Caminho para o imapsync.exe
$imapsyncPath = ""

# Lista de e-mails a serem migrados
$emails = @(
    "contato@example.com.br"
)

# Senha única para todos os e-mails
$senha = "1234"

# Informações do servidor de origem
$servidorOrigem = "imap.uni5.net"
$portaOrigem = 993
$sslOrigem = "--ssl1"

# Informações do servidor de destino
$servidorDestino = "imap.hostinger.com"
$portaDestino = 993
$sslDestino = "--ssl2"

# Loop para migrar todos os e-mails
foreach ($email in $emails) {
    & $imapsyncPath --host1 $servidorOrigem --user1 $email --password1 $senha `
                    --ssl1 --port1 $portaOrigem `
                    --host2 $servidorDestino --user2 $email --password2 $senha `
                    --ssl2 --port2 $portaDestino
                    

    Write-Host "Migração do e-mail $email concluída"
}