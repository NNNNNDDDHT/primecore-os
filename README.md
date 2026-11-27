# Prime Core OS

Sistema gamer da **Prime Core TI**, baseado no [Bazzite](https://bazzite.gg) (KDE, AMD/Intel), feito a partir do [ublue-os/image-template](https://github.com/ublue-os/image-template).

- Steam, Proton e drivers prontos para jogar
- Visual Prime Core TI (tema escuro azul, papel de parede da marca)
- Botão **"Ir para o Windows"** para quem usa dual boot
- Atualizações automáticas: toda melhoria do Bazzite chega junto

## Instalar
Baixe a ISO em **Actions → Build disk images** (artefato da última execução) e grave com Ventoy ou Rufus.

## Migrar um Bazzite já instalado
```bash
sudo bootc switch ghcr.io/nnnnndddht/primecore-os:latest
```
Depois reinicie.
