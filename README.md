# R3V1V3R VPSPACK
# ⚡ VpsPack Cyber Edition v2

Gerenciador de VPS com interface interativa, foco em segurança, automação e administração eficiente.

---
VpsPack/
├── install.sh
├── vpspack
├── modules/
│   ├── users.sh
│   ├── vpn.sh
│   ├── ssh_tunnel.sh
│   ├── firewall.sh
│   ├── monitor.sh
│   └── logs.sh
├── logs/
│   └── vpspack.log
└── README.md

## 🧠 Recursos

* Interface com `whiptail`
* Gerenciamento de usuários
* WireGuard com QR Code automático
* Tunelamento SSH
* Firewall (UFW)
* Monitoramento em tempo real
* Sistema de logs

---

## 🚀 Instalação

```bash
git clone https://github.com/seuuser/VpsPack.git
cd VpsPack
chmod +x install.sh
sudo ./install.sh
```

---

## 🖥️ Uso

```bash
sudo vpspack
```

---

## 🔐 Segurança

Projeto voltado para:

* administração de servidores
* acesso remoto seguro
* estudos

---

## 📊 Logs

Arquivo:

```
/var/log/vpspack.log
```

---

## ⚠️ Requisitos

* Ubuntu/Debian recomendado
* Root
* Internet

---

## 📄 Licença

MIT

