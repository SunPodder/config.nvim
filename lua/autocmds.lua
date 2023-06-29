
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		-- replace all 4 spaces with tabs
		-- vim.api.nvim_command("%s/    /\t/g")
		-- trim trailing whitespace
		-- vim.api.nvim_command("%s/\\s\\+$//e")
		-- no more than 2 empty lines
		-- vim.api.nvim_command("%s/\\n\\{3,}/\\n\\n\\n/e")
		-- no empty lines at the end of the file
		-- vim.api.nvim_command("%s/\\n\\+\\%$//e")
	end,
})

