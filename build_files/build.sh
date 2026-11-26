#!/bin/bash
# Prime Core OS - camada de personalização por cima do Bazzite (KDE, AMD/Intel)
set -ouex pipefail

# Copia system_files/ (papel de parede, ícones, atalhos, scripts) para a raiz da imagem
cp -avf "/ctx/system_files"/. /

# ---------------------------------------------------------------- marca
# Só PRETTY_NAME muda: ID/NAME continuam do Bazzite para as atualizações seguirem funcionando
sed -i 's/^PRETTY_NAME=.*/PRETTY_NAME="Prime Core OS"/' /usr/lib/os-release
grep -q '^VARIANT=' /usr/lib/os-release \
  && sed -i 's/^VARIANT=.*/VARIANT="Prime Core TI"/' /usr/lib/os-release \
  || echo 'VARIANT="Prime Core TI"' >> /usr/lib/os-release

# ---------------------------------------------------------------- scripts
chmod 0755 /usr/bin/primecore-ir-para-windows /usr/libexec/primecore-primeiro-login

# Ferramenta usada pelo botão "Ir para o Windows"
dnf5 install -y efibootmgr || true
