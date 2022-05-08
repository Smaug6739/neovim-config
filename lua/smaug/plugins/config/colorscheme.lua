local config = require("smaug.config")

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. config.theme)
if not status_ok then
  vim.notify("colorscheme " .. config.theme .. " not found!")
  return
end
