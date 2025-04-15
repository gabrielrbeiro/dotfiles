return {
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
            local harpoon = require('harpoon')

            harpoon:setup({
                settings = {
                    save_on_toggle = true,
                }
            })

            vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Add file to harpoon' })
            vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Show harpoon files' })

            vim.keymap.set('n', '<C-h>', function () harpoon:list():select(1) end, { desc = 'Select the first file' })
            vim.keymap.set('n', '<C-j>', function () harpoon:list():select(2) end, { desc = 'Select the second file' })
            vim.keymap.set('n', '<C-k>', function () harpoon:list():select(3) end, { desc = 'Select the third file' })
            vim.keymap.set('n', '<C-l>', function () harpoon:list():select(4) end, { desc = 'Select the fourth file' })

            vim.keymap.set('n', '<C-S-P>', function () harpoon:list():prev() end)
            vim.keymap.set('n', '<C-S-N>', function () harpoon:list():next() end)
        end
    }
}
