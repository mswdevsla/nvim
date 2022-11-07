local status_ok, leap = pcall(require, "leap")
if not status_ok then
	print("leap failing")
end

-- true to override conflicts
leap.set_default_keymaps(true)

leap.setup({
	case_sensitive = false,
})

-- Bidirectional search
local function leap_current_window()
	leap.leap({ target_windows = { vim.fn.win_getid() } })
end

-- Map them to your preferred key, like:
vim.keymap.set("n", "s", leap_current_window, { silent = true })

vim.cmd([[
" use clever-f
silent! unmap f
silent! unmap F
silent! unmap t
silent! unmap T
]])
