local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
[[  ____                                            __ __       ____   ________    __       __      ]],
[[ /\  _`\                                         _\ \\ \__   /'___\ /\_____  \ /'__`\   /'_ `\    ]],
[[ \ \,\L\_\    ___ ___      __     __  __     __ /\__  _  _\ /\ \__/ \/___//'/'/\_\L\ \ /\ \L\ \   ]],
[[  \/_\__ \  /' __` __`\  /'__`\  /\ \/\ \  /'_ `\/_L\ \\ \L_\ \  _``\   /' /' \/_/_\_<_\ \___, \  ]],
[[    /\ \L\ \/\ \/\ \/\ \/\ \L\.\_\ \ \_\ \/\ \L\ \/\_   _  _\\ \ \L\ \/' /'     /\ \L\ \\/__,/\ \ ]],
[[    \ `\____\ \_\ \_\ \_\ \__/.\_\\ \____/\ \____ \/_/\_\\_\/ \ \____/\_/       \ \____/     \ \_\]],
[[     \/_____/\/_/\/_/\/_/\/__/\/_/ \/___/  \/___L\ \ \/_//_/   \/___/\//         \/___/       \/_/]],
[[                                             /\____/                                              ]],
[[                                             \_/__/                                               ]],
}

dashboard.section.buttons.val = {
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/AppData/Local/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
