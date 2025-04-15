require('oil').setup({
	default_file_explorer = true,
	columns = {
		'icon',
		'permissions',
		'size',
		'mtime',
	},
	buf_options = {
		buflisted = false,
		bufhidden = 'hide'
	},
})

vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory' })

