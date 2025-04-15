return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
        'rcarriga/nvim-notify',
    },
    config = function ()
        require("noice").setup({
            views = {
                cmdline_popup = {
                    border = {
                        style = "none",
                        padding = { 2, 3 },
                    },
                    filter_options = {},
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
                    },
                },
            },
            cmdline = {
                format = {
                    search_down = {
                        view = "cmdline",
                    },
                    search_up = {
                        view = "cmdline",
                    },
                },
            }, 
        })
    end
}
