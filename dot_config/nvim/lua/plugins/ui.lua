return { 
	-- color schema
	{ 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

	-- status line
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	-- oil (file navigation)
	{
		'stevearc/oil.nvim',
		opts = {},
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	-- noice (for commands and notifications)
	{
		'folke/noice.nvim',
		event = 'VeryLazy',
		dependencies = {
			'MunifTanjim/nui.nvim',
			'rcarriga/nvim-notify',
		},
	},

	-- trouble
	{
		'folke/trouble.nvim',
		cmd = 'Trouble',
	},

	-- which-key (a keymap helper)
	{
		'folke/which-key.nvim',
		event = 'VeryLazy',
	},

    -- Harpoon
    { 'ThePrimeagen/harpoon' },

    -- Floaterm
    { 'voldikss/vim-floaterm' },
}
