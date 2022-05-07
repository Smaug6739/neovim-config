# Config

Lors du démarrage de neovim, le code situé dans `nvim/init.lua` va être éxécuté (les options, paramètres, plugins etc. seront chargés).
Le dossier `lua` contient les autres fichiers en `.lua` de la configuration.
Il est recommandé de placer ses fichiers de configuration dans un sous-dossier dans le dossier `/lua` pour éviter qu'il entre en colision avec d'autres fichiers.

## Gestionaire de plugins

Gestionaire de plugins : packer.vim
Github : https://github.com/wbthomason/packer.nvim
Commandes :  
1) `PackerSync` : Met à jour et installe tout les plugins.
2) `PackerStatus` : Permet de voir les différents plugins installés
3) `PackerUpdate` : Permet de mettre a jour les plugins

## Autocompletion

Plugin : 
Commandes :  
  - `TAB` : Permet de naviguer danns les extraits de code proposés et aux différents endroits de la fonctions (marqués d'un signe "$")
Ajouter un plugin :
L'installer (l'ajouter aux plugins cmp dans plugins.lua)
Et ajouter son nom à l'objet `sources` dans `cmp.lua` (ligne 113) `{ name = "path" },`

## LSP

Ajouter un nouveau serveur :
`:LspInstallInfo` : Montres les serveurs installés et les serveurs disponibles
- Ajouter un serveur : Appuyer sur `i` sur le serveur en question
- Mettre a jour un serveur un serveur : Appuyer sur `u` sur le serveur en question
- Enlever un serveur : Appuyer sur `X` sur le serveur en question

Obtenir des informations sur un serveur : `:LspInfo`

Infos sur une erreur : `gL`

## FZF

Telescope https://github.com/nvim-telescope/telescope.nvim

Commandes

- `Telescope find_files` Pour rechecher un fichier
- `Telescope live_grep`  Pour rechercher une ligne dans les fichiers du projet

## Treesitter

Ce plugin permet une coloration syntaxique correcte du language. Il est possible d'ajouter/changer/supprimer des langages dans le fichier `treesitter.lua` (`ensure_installed`). Voir la liste des languages pris en charges (https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)


