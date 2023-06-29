local opt = vim.opt
local api = vim.api

opt.number = true
opt.cursorline = true
opt.backup = false
opt.incsearch = true
opt.ignorecase = true
opt.updatetime = 300
opt.hidden = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.termguicolors = true
opt.clipboard = "unnamedplus"

-- available foldmethods:
-- indent, manual, marker, syntax, expr, diff
-- opt.foldmethod = "indent"

-- opt.spell = true
-- opt.spelllang = { 'en_us' }

-- load modules
require("keymaps")
require("plugins")
require("autocmds")




