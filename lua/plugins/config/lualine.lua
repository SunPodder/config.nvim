require('lualine').setup({
	sections = {
	    lualine_a = {'mode'},
    	lualine_b = {'branch', 'diff', 'diagnostics'},
	    lualine_c = {'filename'},
	    lualine_x = {'encoding', 'fileformat', 'filetype'},
	    lualine_y = {'progress'},
    	lualine_z = {'location'}
	},
	-- tabline = {
	-- 	lualine_a = {
	-- 		{
	-- 			'tabs',
	-- 			mode = 1,
	-- 			component_separators = { left = '', right = '' },
	-- 			section_separators = { left = '', right = ''},
	-- 			fmt = function(name, context)
	-- 		        local buflist = vim.fn.tabpagebuflist(context.tabnr)
	-- 		        local winnr = vim.fn.tabpagewinnr(context.tabnr)
	-- 		        local bufnr = buflist[winnr]
	-- 				-- get file icon
	-- 				local icon = require'nvim-web-devicons'.get_icon(
	-- 					vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ':t'),
	-- 					vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ':e'),
	-- 					{ default = true }
	-- 				)
	-- 	        	return icon .. ' ' .. name
	-- 			end
	-- 		},
	-- 	}
	-- },
	winbar = {},
})

