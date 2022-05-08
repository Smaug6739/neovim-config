local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return vim.notify("Cannot find the module 'nvim-treesitter.configs'. Unable to load it.")
end
local config = require("smaug.config")

configs.setup {
  ensure_installed = config.treesitter,
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = { enable = true },
  highlight = {
    enable = true,
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true }
}
