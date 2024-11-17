require("go").setup({
	verbose = false,
	run_in_floaterm = true,
})

vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", {
	silent = true,
	noremap = true,
	desc = "Manage errors in the current file",
})

-- debugger
local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

require("nvim-dap-virtual-text").setup()
