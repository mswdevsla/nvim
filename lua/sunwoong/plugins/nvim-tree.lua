local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
local keymap = vim.keymap
keymap.set("n", "<leader>n", ":NvimTreeToggle<cr>")
keymap.set("n", "<leader>.", ":NvimTreeFindFileToggle<cr>")

nvimtree.setup({ view = {
	width = 50,
} })
