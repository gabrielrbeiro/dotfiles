require("go").setup({
	verbose = false,
	run_in_floaterm = true,
})

vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", {
	silent = true,
	noremap = true,
	desc = "Manage errors in the current file",
})
