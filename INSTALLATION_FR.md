# Installation

Ce guide vous expliquera comment reproduire ma configuration neovim.

## Nerdfont police

Vous pouvez installer une police Nerdfont permettant d'afficher des icônes sur le terminal (et neovim).  
Vous pouvez télécharger la police "Hack" (disponible dans `ressources/fonts`) sur votre machine.  
Pour l'installer vous pouvez la mettre dans le dossier `C:\Wondows\Fonts` sur Windows ou bien dans le dossier `~/.local/share/fonts` sur les systèmes Unix (l'emplacement peut changer d'une distribution à une autre). 

Alacritty configuration (`alacritty.yml`)

```yml
# Font configuration
font:
  normal:
    family: "Hack Nerd Font"
    style: Regular
  bold:
    family: "Hack Nerd Font"
    style: Bold
  italic:
    family: "Hack Nerd Font"
    style: Italic
  bold_italic:
    family: "Hack Nerd Font"
    style: Bold Italic
```
Windows terminal configuration (`settings.json`)

```json
"profiles": 
{
  "defaults": {
  "scrollbarState": "hidden",
  "padding" : "0, 0, 0, 0",
  "fontFace": "Hack Nerd Font",
  },
},
```

## Compilateur

## Ripgrep

https://github.com/BurntSushi/ripgrep
