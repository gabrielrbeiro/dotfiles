return {
    'lukas-reineke/indent-blankline.nvim',
    name = 'ibl',
    opts = {},
    config = function()
        require('ibl').setup({
            debounce = 100,
            indent = { char = "│" },
            whitespace = { highlight = { "Whitespace", "NonText" } },
            scope = {
                show_start = false,
                show_end = false,
                show_exact_scope = true,
                highlight = { "Function", "Label" },
            }
        })
    end
}
