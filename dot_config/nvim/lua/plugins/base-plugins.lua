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
}
