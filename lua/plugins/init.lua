vim.cmd [[packadd packer.nvim]]

local plugins = require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/plenary.nvim"

	-- lsp
	use "neovim/nvim-lspconfig"
	use "williamboman/mason-lspconfig.nvim"
	use {
	    "williamboman/mason.nvim",
	    run = ":MasonUpdate"
	}

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
		-- "f3fora/cmp-spell",
		"folke/neodev.nvim"
	}


	-- git integration
	use 'tanvirtin/vgit.nvim'


	use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

	-- syntax
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}
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
		branch = "v2.x",
    	requires = {
      		"nvim-tree/nvim-web-devicons",
      		"MunifTanjim/nui.nvim",
    	}
  	}

	-- statusline
	-- use "rebelot/heirline.nvim"
	use "nvim-lualine/lualine.nvim"

	-- terminal
	use {
		"akinsho/toggleterm.nvim",
		tag = "*",
	}

	-- search
	use {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { "nvim-lua/plenary.nvim" }
	}

	-- utils
	use "max397574/colortils.nvim"
	use "windwp/nvim-autopairs"
	use "Dhanus3133/Leetbuddy.nvim"
	use "bennypowers/nvim-regexplainer"


	-- themes
	use {
		"morhetz/gruvbox",
		"dracula/vim",
		-- "tanvirtin/monokai.nvim"
		"sainnhe/sonokai",
		"folke/tokyonight.nvim",
	}

	-- icons
	use "ryanoasis/vim-devicons"
	use "onsails/lspkind.nvim"
end)

vim.cmd("colorscheme sonokai")


-- load configs
-- require("plugins.config.heirline")
require("plugins.config.mason")
require("plugins.config.mason-lspconfig")
require("plugins.config.term")
require("plugins.config.telescope")
require("plugins.config.tree")
require("plugins.config.lualine")
require("plugins.config.treesitter")
require("plugins.config.autopairs")
require("plugins.config.colortils")
require("plugins.config.regex")

-- copilot suggestions in cmp window
-- require("plugins.config.copilot")
-- require("plugins.config.copilot_cmp")

require("neodev").setup()
require('vgit').setup()

require("plugins.config.cmp")

require("leetbuddy").setup({
	domain = "com",
	language = "py",
})

return plugins

