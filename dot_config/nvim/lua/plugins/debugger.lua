return {
    {
        'mfussenegger/nvim-dap',
        config = function()
            vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<cr>', { desc = 'Add breakpoint at line' })
        end,
    },
    {
        'leoluz/nvim-dap-go',
        ft = 'go',
        dependencies = 'mfussenegger/nvim-dap',
        config = function (_, opts)
            local dap = require('dap-go')
            dap.setup(opts)

            vim.keymap.set('n', '<leader>dgt', function()
                dap.debug_test()
            end, { desc = 'Debug go test' })
        end,
    },
    {'nvim-neotest/nvim-nio'},
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
        config = function ()
            local dap, dapui = require('dap'), require('dapui')
            dapui.setup()

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end

            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated.dapui_config = function ()
                dapui.close()
            end

            dap.listeners.before.event_exited.dapui_config = function ()
                dapui.close()
            end
        end,
    }
}
