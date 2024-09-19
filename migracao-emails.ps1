# Caminho para o imapsync.exe
$imapsyncPath = "C:\Users\valdo\Downloads\Sites migração\imapsync_2.290\imapsync.exe"

# Lista de e-mails a serem migrados
$emails = @(
    "contato@arloesitech.com.br",
    "eder.reverdito@arloesitech.com.br",
    "diretoria@arloesitech.com.br",
    "monitoramento@arloesitech.com.br",
    "dp@arloesitech.com.br",
    "daniela.ramos@arloesitech.com.br",
    "rebecca.bueno@arloesitech.com.br",
    "amauri.junior@arloesitech.com.br",
    "vault@arloesitech.com.br",
    "dev@arloesitech.com.br",
    "chavepix@arloesitech.com.br",
    "financeiro@arloesitech.com.br",
    "wilcson.denner@arloesitech.com.br",
    "comercial@arloesitech.com.br",
    "anny.dias@arloesitech.com.br",
    "suporte@arloesitech.com.br",
    "caio.castro@arloesitech.com.br",
    "engenharia@arloesitech.com.br",
    "administrativo@arloesitech.com.br",
    "igor.brandao@arloesitech.com.br",
    "dss@arloesitech.com.br",
    "recrutamento@arloesitech.com.br",
    "fernando.bellezzia@arloesitech.com.br",
    "git@arloesitech.com.br",
    "maria.fernanda@arloesitech.com.br",
    "desenvolvedor@arloesitech.com.br",
    "vitor.lima@arloesitech.com.br",
    "pix@arloesitech.com.br",
    "samira.amorim@arloesitech.com.br",
    "danielle.camilo@arloesitech.com.br",
    "vinicius.eugenio@arloesitech.com.br",
    "monica.ribeiro@arloesitech.com.br",
    "licitacoes@arloesitech.com.br",
    "airton.silva@arloesitech.com.br",
    "no-reply@arloesitech.com.br",
    "guilherme.alexandre@arloesitech.com.br",
    "compras@arloesitech.com.br"
)

# Senha única para todos os e-mails
$senha = "Arlo@124353"

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