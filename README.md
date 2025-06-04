cat > README.txt << 'EOF'
Frosthold - Servidor Minecraft com Docker

Este projeto contém a configuração para rodar um servidor Minecraft dentro de um container Docker, facilitando o gerenciamento e deploy do servidor.

---

Estrutura do projeto:

- docker-compose.yml — Configuração do Docker Compose para iniciar o servidor Minecraft.
- start.sh — Script para iniciar o servidor.
- restart.sh — Script para reiniciar o servidor.
- backup.sh — Script para criar backups automáticos.
- backups/ — Pasta onde os backups do servidor são armazenados.
- logs/ — Logs do servidor.
- data/ — Arquivos de dados do servidor Minecraft (mundo, configurações, whitelist, etc).

---

Requisitos:

- Docker e Docker Compose instalados na máquina.
- Máquina virtual Ubuntu 22 (opcional, pode ser rodado direto no host).
- Radmin VPN (opcional, para conexão VPN com jogadores).
- Acesso SSH para gerenciar o servidor remotamente (opcional).

---

Como usar:

Inicializar o servidor:
./start.sh

Reiniciar o servidor:
./restart.sh

Criar backup manual:
./backup.sh

---

Conectando no servidor Minecraft:

- Use o IP público da máquina onde o servidor está rodando.
- Caso use VPN (ex: Radmin VPN), use o IP virtual da VPN para conectar.

---

Observações:

- Arquivos .jar, pastas backups e logs são ignorados no Git.
- Os arquivos whitelist.json e server.properties dentro da pasta data são versionados para manter as configurações e permissões sincronizadas.

---

Como contribuir:

Sinta-se livre para abrir issues ou enviar pull requests com melhorias.

---

Licença:

MIT License

---

Feito por rainzrz
EOF
