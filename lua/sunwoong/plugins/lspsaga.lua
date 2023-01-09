local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

local telescope_builtin_status, telescope_builtin = pcall(require, "telescope.builtin")
if not telescope_builtin_status then
	return
end

saga.init_lsp_saga({
	server_filetype_map = {
		typescript = "typescript",
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "<leader>a", "<Cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
vim.keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "gd", function()
	telescope_builtin.lsp_definitions()
end)
vim.keymap.set("n", "gi", function()
	telescope_builtin.lsp_implementations()
end)
