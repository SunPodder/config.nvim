vim.cmd [[packadd packer.nvim]]

local plugins = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/plenary.nvim"

	-- lsp
	use "neovim/nvim-lspconfig"
	use "williamboman/mason-lspconfig.nvim"
	use "williamboman/mason.nvim"

	-- snippets
	use "saadparwaiz1/cmp_luasnip"
	use {
		"L3MON4D3/LuaSnip",
		run = "make install_jsregexp"
	}

	-- completion
	use {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"folke/neodev.nvim"
	}

	-- git integration
	use "lewis6991/gitsigns.nvim"

	-- syntax
	use "nvim-treesitter/nvim-treesitter"
	use "ray-x/cmp-treesitter"

	use 'stevearc/dressing.nvim'
	use "akinsho/flutter-tools.nvim"

	-- ai
	use {
		-- "zbirenbaum/copilot.lua",
		-- "zbirenbaum/copilot-cmp"
		"github/copilot.vim",
		-- "hrsh7th/cmp-copilot",
	}

	-- file explorer
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
    	requires = {
      		"nvim-tree/nvim-web-devicons",
      		"MunifTanjim/nui.nvim",
    	}
  	}

	use "folke/trouble.nvim"
	use "nvimdev/dashboard-nvim"
	use "rcarriga/nvim-notify"
	use "folke/noice.nvim"

	-- statusline
	use "nvim-lualine/lualine.nvim"
	use "akinsho/bufferline.nvim"
	use "utilyre/barbecue.nvim"
	use "SmiteshP/nvim-navic"

	-- terminal
	-- use "akinsho/toggleterm.nvim"

	-- search
	use "nvim-telescope/telescope.nvim"

	-- utils
--	use "max397574/colortils.nvim"
	use "windwp/nvim-autopairs"
	use 'numToStr/Comment.nvim'
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
		    vim.o.timeoutlen = 500
		end
	}
	use 'j-hui/fidget.nvim'
	use 'smoka7/hop.nvim'

	-- themes
	use {
--		"dracula/vim",
--		"sainnhe/sonokai",
		"folke/tokyonight.nvim",
		"dylanaraps/wal.vim",
	}
	use { "catppuccin/nvim", as = "catppuccin" }

	-- icons
	use "ryanoasis/vim-devicons"
	use "onsails/lspkind.nvim"
end)

vim.cmd("colorscheme tokyonight-storm")
vim.notify = require("notify")

-- load configs
require("mason").setup()
require("plugins.config.mason-lspconfig")
-- require("toggleterm").setup()
require("plugins.config.lualine")
require("plugins.config.treesitter")
require("nvim-autopairs").setup()
-- require("colortils").setup()
require("plugins.config.neo-tree")
require("plugins.config.copilot")
-- copilot suggestions in cmp window
-- require("copilot").setup()
-- require("copilot_cmp").setup()

require("dashboard").setup()
require("neodev").setup()
require('gitsigns').setup()
require("which-key").setup()
require("flutter-tools").setup()
require("Comment").setup()
require("barbecue").setup()
require("bufferline").setup()
require("fidget").setup()
require("hop").setup()
require("noice").setup()

require("plugins.config.cmp")

return plugins

