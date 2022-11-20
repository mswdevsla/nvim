local status_ok, leap = pcall(require, "leap")
if not status_ok then
	print("leap failing")
end

-- true to override conflicts
leap.set_default_keymaps(false)

leap.setup({
	case_sensitive = false,
})

-- Bidirectional search
local function leap_current_window()
	leap.leap({ target_windows = { vim.fn.win_getid() } })
end

vim.api.nvim_set_hl(0, "LeapLabelPrimary", { fg = "yellow", bold = true })
vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
vim.api.nvim_set_hl(0, "LeapMatch", {
	fg = "white", -- for light themes, set to 'black' or similar
	bold = true,
	nocombine = true,
})

-- Map them to your preferred key, like:
vim.keymap.set("n", "s", leap_current_window, { silent = true })
vim.keymap.set("n", "gs", "<Plug>(leap-cross-window)", { silent = true })

vim.cmd([[
" use clever-f
silent! unmap f
silent! unmap F
silent! unmap t
silent! unmap T
]])
