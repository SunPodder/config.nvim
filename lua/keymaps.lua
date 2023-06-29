local api = vim.api

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map leader to space
vim.g.mapleader = " "

-- map ctrl-s to save
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>a")

-- map ctrl-q to quit
map("n", "<C-q>", ":q!<CR>")
map("i", "<C-q>", "<ESC>:q!<CR>")

-- map ctrl-x to quit all
map("n", "<C-x>", ":qa<CR>")

-- alt-u undo
map("n", "<A-u>", ":undo<CR>")
map("i", "<A-u>", "<ESC>:undo<CR>")

-- alt-r redo
map("n", "<A-r>", ":redo<CR>")
map("i", "<A-r>", "<ESC>:redo<CR>")

-- paste
map("i", "<C-p>", "<ESC>\"*pa")

-- ctrl-home to go to top of file
map("n", "<C-Home>", "gg")
map("i", "<C-Home>", "<ESC>gg")

-- ctrl-end to go to bottom of file
map("n", "<C-End>", "G")
map("i", "<C-End>", "<ESC>G")

map("v", "<BS>", "\"_da")
map("v", "<DEL>", "\"_da")

-- ctrl-z toogle fold
map("n", "<C-z>", "za")
map("i", "<C-z>", "<ESC>za")

-- toggle file explorer
map("n", "<C-f>", ":Neotree toggle<CR>")
map("i", "<C-f>", "<ESC>:Neotree toggle<CR>")