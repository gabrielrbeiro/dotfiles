return {
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- TODO comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Surround
	{
		"kylechui/nvim-surround",
		version = "v2.3.0",
		event = "VeryLazy",
	},

	-- Copilot
	{ "github/copilot.vim" },

	-- NoneLS (LSP)
	{
		"nvimtools/none-ls.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" } },
}
