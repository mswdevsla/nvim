local keymap = vim.keymap
local status, darttools = pcall(require, "dart-vim-plugin")
if not status then
	return
end

keymap.set("n", "df", ":DartFmt<cr>")

darttools.setup({})
