-- lua 코드 작성해 보는법
--
--
--
local alert = require("notify")

local function getCurrent()
	--[[ local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()

	alert(vim.inspect(line))
	alert(vim.inspect(pos)) ]]
end

local function get_mark()
	current = vim.api.nvim_buf_get_mark(0, "t")
	alert(vim.inspect(current))
end

local function set_mark()
	vim.api.nvim_buf_set_mark(0, "t", 12, 3, {})
end

--[[ set_mark()
getCurrent() ]]
