# Explorando Azure App Service

O serviço hospeda aplicações web de várias linguagens, com suporte a auto scaling, que roda em Windows e Linux.

- Suporte a containers Docker

- Suporte a deploy contínuo

- Slot de deploy (permite fazer deploy de uma nova versão da aplicação sem afetar a versão em produção)

# Limitações

- App Service no Linux não suporta Shared pricing tier

- O portal do Azure mostra apenas recursos que funcionam atualmente para aplicações Linux. Conforme os recursos são habilitados, eles são ativados no portal.

- Quando implantado em imagens integradas, seu código e conteúdo são alocados em um volume de armazenamento para conteúdo web, apoiado pelo Azure Storage. A latência do disco deste volume é maior e mais variável que a latência do sistema de arquivos do container. Aplicações que requerem acesso intensivo de leitura a arquivos de conteúdo podem se beneficiar da opção de container personalizado, que coloca os arquivos no sistema de arquivos do container em vez do volume de conteúdo.

