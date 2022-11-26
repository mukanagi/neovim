return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("glepnir/dashboard-nvim")
	use("EdenEast/nightfox.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("morhetz/gruvbox")

	-- LSP plugins
	-- mason
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp

	-- Autocomplete
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("hrsh7th/cmp-nvim-lua")
	--	use("hrsh7th/cmp-path")
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin

	--snippets
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("rafamadriz/friendly-snippets")
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main" })

	-- For Tmux
	use("christoomey/vim-tmux-navigator")
	-- AutoPep8
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	-- Plugins
	-- Toggle terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("szw/vim-maximizer") -- max & restore current  window
	use("vim-airline/vim-airline") -- Airline statusbar
	use("vim-airline/vim-airline-themes") -- Airline theme
	use("romgrk/barbar.nvim") -- Tabs
	use("nvim-lualine/lualine.nvim") -- bottom line
	use({ "nvim-treesitter/nvim-treesitter" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } })
end)
