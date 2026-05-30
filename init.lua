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

require("keymaps")
require("autocmds")

-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.cmd("colorscheme tokyonight-storm")

require("luarocks-nvim").setup()
