vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- which key

vim.keymap.set('n', '<leader>?', function()
	require('which-key').show({ global = true })
end)

-- trouble (for errors display)

vim.api.nvim_set_keymap('n', '<leader>xx', ':Trouble diagnostics toggle<CR>', { 
	noremap = true, 
	silent = true,
	desc = 'Toggle Trouble Diagnostics',
})

vim.api.nvim_set_keymap('n', '<leader>xX', ':Trouble diagnostics toggle filter.buf=0<CR>', {
	noremap = true,
	silent = true,
	desc = 'Buffer Diagnostics (Trouble)',
})

vim.api.nvim_set_keymap('n', '<leader>cs', ':Trouble symbols toggle focus=false<CR>', {
	noremap = true,
	silent = true,
	desc = 'Symbols (Trouble)',
})

vim.api.nvim_set_keymap('n', '<leader>cl', ':Trouble lsp toggle focus=false win.position=right<CR>', {
	noremap = true,
	silent = true,
	desc = 'LSP definitions / references / ... (Trouble)',
})

vim.api.nvim_set_keymap('n', '<leader>xL', ':Trouble loclist toggle<CR>', {
	noremap = true,
	silent = true,
	desc = 'Location list (Trouble)',
})

vim.api.nvim_set_keymap('n', '<leader>xQ', ':Trouble qflist toggle<CR>', {
	noremap = true,
	silent = true,
	desc = 'Quickfix List (Trouble)',
})

-- todo-comments
vim.api.nvim_set_keymap('n', '<leader>td', ':TodoTelescope<CR>', {
    noremap = true,
    silent = true,
    desc = 'Display todos in telescope',
})
