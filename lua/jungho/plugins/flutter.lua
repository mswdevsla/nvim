local keymap = vim.keymap
local status, fluttertools = pcall(require, "flutter-tools")
if not status then
	return
end
--[[ local prefix_flutter = "<leader><enter>"
keymap.set("n", prefix_flutter .. "fr", ":FlutterRun<enter>")
keymap.set("n", prefix_flutter .. "fp", ":FlutterPubGet<enter>") ]]

fluttertools.setup({})

--[[ keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>") ]]
