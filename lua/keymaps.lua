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

-- alt-r redo
map("n", "<A-r>", ":redo<CR>")
map("i", "<A-r>", "<ESC>:redo<CR>")

-- ctrl-home to go to top of file
map("n", "<C-Home>", "gg")
map("i", "<C-Home>", "<ESC>gg")

-- ctrl-end to go to bottom of file
map("n", "<C-End>", "G")
map("i", "<C-End>", "<ESC>Gi")

map("v", "<BS>", "\"_da")
map("v", "<DEL>", "\"_da")

-- ctrl-z toogle fold
map("n", "<C-z>", "za")
map("i", "<C-z>", "<ESC>za")

-- toggle file explorer
map("n", "<C-f>", ":Neotree toggle<CR>")
map("i", "<C-f>", "<ESC>:Neotree toggle<CR>")

-- show diagnostics
map("n", "<leader>d", ":TroubleToggle<CR>")

map("n", "<leader>|", ":vsplit<CR>")
map("n", "<leader>-", ":split<CR>")

map("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>")
map("v", "<leader>ca", ":lua vim.lsp.buf.range_code_action()<CR>")
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
map("n", "K", ":lua vim.lsp.buf.hover()<CR>")

map('n', '<leader>ff', ":Telescope find_files<CR>")
map('n', '<leader>fg', ":Telescope live_grep<CR>")
map('n', '<leader>fb', ":Telescope buffers<CR>")
map('n', '<leader>fh', ":Telescope help_tags<CR>")

