-- Treesitter
local treesitter = require('nvim-treesitter.configs')
treesitter.setup({
    ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'javascript', 'html', 'go', 'regex', 'bash' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
