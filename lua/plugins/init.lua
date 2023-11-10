vim.cmd [[packadd packer.nvim]]

local plugins = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/plenary.nvim"

	-- lsp
	use "neovim/nvim-lspconfig"
	use "williamboman/mason-lspconfig.nvim"
	use "williamboman/mason.nvim"

	-- snippets
	use {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip"
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

	use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

	-- syntax
	use "nvim-treesitter/nvim-treesitter"
	use "ray-x/cmp-treesitter"

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

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
		    vim.o.timeoutlen = 500
		end
	}
	use "folke/trouble.nvim"

	use "nvimdev/dashboard-nvim"

	-- statusline
	use "nvim-lualine/lualine.nvim"

	-- terminal
	use "akinsho/toggleterm.nvim"

	-- search
	use "nvim-telescope/telescope.nvim"

	-- utils
	use "max397574/colortils.nvim"
	use "windwp/nvim-autopairs"
	use "Dhanus3133/Leetbuddy.nvim"

	-- themes
	use {
		"dracula/vim",
		"sainnhe/sonokai",
		"folke/tokyonight.nvim",
	}

	-- icons
	use "ryanoasis/vim-devicons"
	use "onsails/lspkind.nvim"
end)

vim.cmd("colorscheme tokyonight-storm")


-- load configs
require("plugins.config.mason")
require("plugins.config.mason-lspconfig")
require("plugins.config.term")
require("plugins.config.telescope")
require("plugins.config.lualine")
require("plugins.config.treesitter")
require("plugins.config.autopairs")
require("plugins.config.colortils")
require("plugins.config.neo-tree")

-- copilot suggestions in cmp window
-- require("plugins.config.copilot")
-- require("plugins.config.copilot_cmp")

require("neodev").setup()
require('gitsigns').setup()
require("which-key").setup()
require("plugins.config.leetbuddy")

require("plugins.config.cmp")

return plugins

