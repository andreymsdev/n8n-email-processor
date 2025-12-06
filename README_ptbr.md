# n8n Workflow de Automação com Gmail
<img src="images/n8n.png" alt="Prévia do Workflow" width="">

Este repositório contém um workflow do **n8n** que recebe e-mails através do Gmail, processa o conteúdo, encaminha mensagens para múltiplos destinatários e gera logs persistentes em formato `.txt` no disco.

## Funcionalidades

- **Gatilho do Gmail** para capturar e-mails recebidos
- **Node de Código (Java)** para extrair e formatar assunto/corpo
- **Envio de e-mails** para múltiplos destinatários
- **Rastreamento de status** (OK / erro)
- **Geração de logs** usando Write File to Disk
- **Pasta montada via Docker** para armazenamento persistente

## Estrutura do Workflow

1. **Gmail Trigger**  
   Captura novos e-mails recebidos.

2. **Code (Java)**  
   Formata o assunto, corpo e prepara os dados estruturados.

3. **Gmail Send Email**  
   Envia mensagens para múltiplos destinatários.

4. **Code (Log Builder)**  
   Gera texto de log com timestamp e metadados do e-mail.

5. **Write File to Disk**  
   Escreve um arquivo `.txt` de log no diretório `/logs`.

## Configuração com Docker

Exemplo de execução com `docker run`:

```bash
docker run -d --name n8n \
  -p 5678:5678 \
  -v /home/node/.n8n:/home/node/.n8n \
  -v /home/node/n8n-logs:/logs \
  n8nio/n8n
