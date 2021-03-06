local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Error: An error occured during loading of 'packer' module.")
  return
end

--Have packer use a popup window
packer.init {
 display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  }
}

-- Install your plugins here
return packer.startup(function(use)

  -- Plugins here ("GITHUB_USERNAME/REPO_NAME")

  -- General and util plugins
  use "wbthomason/packer.nvim"             -- Have packer manage itself
  use "nvim-lua/popup.nvim"                -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"              -- Useful lua functions used by lots of plugins (telescope)
  use "kyazdani42/nvim-web-devicons"       -- (for nvim-tree & lualine.nvim & barbar)

  --Autopairs
  use "windwp/nvim-autopairs"

  -- Theme
  --use 'joshdick/onedark.vim'             -- Colorscheme
  use 'projekt0n/github-nvim-theme'        -- Colorscheme
  use 'nvim-lualine/lualine.nvim'          -- Status line
  use 'romgrk/barbar.nvim'                 -- Tabline plugin

  -- Startify
  use 'goolord/alpha-nvim'                 -- Greeter like startify

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                   -- The completion plugin
  use "hrsh7th/cmp-buffer"                 -- buffer completions
  use "hrsh7th/cmp-path"                   -- path completions
  use "hrsh7th/cmp-cmdline"                -- cmdline completions
  use "saadparwaiz1/cmp_luasnip"           -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"               -- lsp completions
--  use "hrsh7th/cmp-nvim-lua"

  -- Snippets
  use "L3MON4D3/LuaSnip"                   --snippet engine
  use "rafamadriz/friendly-snippets"       -- a bunch of snippets to use
  use "nl-contributions/sheweny-typescript-snippets" -- sheweny


  -- LSP
  use "neovim/nvim-lspconfig"              -- enable LSP
  use "williamboman/nvim-lsp-installer"    -- simple to use language server
  use "jose-elias-alvarez/null-ls.nvim"    -- Inject LSP diagnostics, code actions ...

  -- FZF
  use "nvim-telescope/telescope.nvim"      -- search file, line of code etc

  -- File explorer
  use "kyazdani42/nvim-tree.lua"           -- a simple file explorer

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"    -- Syntax coloration

  -- Other
  use "ap/vim-css-color"                   -- Display hex colors

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
