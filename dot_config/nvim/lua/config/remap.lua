vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Keymaps to center screen after motions
vim.keymap.set('n', '{', '{zz', { silent = true })
vim.keymap.set('n', '}', '}zz', { silent = true })
vim.keymap.set('n', 'n', 'nzz', { silent = true })

