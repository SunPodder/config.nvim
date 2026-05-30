return {
  -- LuaRocks
  { "vhyrro/luarocks.nvim", opts = { rocks = {} } },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", opts = {} },
  { "williamboman/mason-lspconfig.nvim", dependencies = { "williamboman/mason.nvim" }, config = "plugins.config.mason-lspconfig" },

  -- Snippets
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },

  -- Completion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/nvim-cmp", config = "plugins.config.cmp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "folke/neodev.nvim", opts = {} },
  { "ray-x/cmp-treesitter" },

  -- Git
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- Syntax
  { "nvim-treesitter/nvim-treesitter", config = "plugins.config.treesitter" },
  { "stevearc/dressing.nvim" },
  { "MeanderingProgrammer/render-markdown.nvim", dependencies = { "nvim-treesitter/nvim-treesitter" } },

  -- AI
  { "github/copilot.vim", config = function()
    vim.g.copilot_filetypes = { yaml = true, yml = true, markdown = true }
  end },

  -- Tools
  { "folke/trouble.nvim", opts = {} },
  { "nvimdev/dashboard-nvim", opts = {} },

  -- Statusline
  { "nvim-lualine/lualine.nvim", config = "plugins.config.lualine" },
  { "akinsho/bufferline.nvim", config = "plugins.config.bufferline" },
  { "utilyre/barbecue.nvim", dependencies = { "SmiteshP/nvim-navic" }, opts = {} },

  -- Search
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } },

  -- Utils
  { "nvim-lua/plenary.nvim" },
  { "windwp/nvim-autopairs", opts = {} },
  { "numToStr/Comment.nvim", opts = {} },
  { "folke/which-key.nvim", opts = {}, config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
    require("which-key").setup()
  end },
  { "j-hui/fidget.nvim", opts = {} },
  { "smoka7/hop.nvim", opts = {} },
  { "ellisonleao/glow.nvim" },

  -- Themes
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "dylanaraps/wal.vim" },
  { "xiyaowong/transparent.nvim", opts = {} },

  -- Icons
  { "nvim-tree/nvim-web-devicons" },
  { "ryanoasis/vim-devicons" },
  { "onsails/lspkind.nvim" },
}