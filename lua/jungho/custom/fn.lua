function inputTextCurrentCursor(text)
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos) .. text .. line:sub(pos + 1)


	vim.api.nvim_set_current_line(nline)
end

--[[ alert = require("notify")
current = vim.api.nvim_get_current_buf() ]]

--[[ local total = -1 ]]

--[[ function setTotal() ]]
--[[ 	local setnum = vim.fn.input("total:", "", "file") ]]
--[[ 	total = setnum ]]
--[[ end ]]

function getPercent()
	--[[ local n = -1 ]]
	--[[ if total <= 0 then ]]
	--[[ else ]]
	--[[ 	n = vim.fn.input("number:", "", "file") ]]
	--[[ end ]]
	local total = vim.fn.input("total:", "", "file")
	local n = vim.fn.input("number:", "", "file")

	local percent = "'" .. n / total * 100 .. "%" .. "'"
	inputTextCurrentCursor(percent)
end

function excuteCmdLine(strategy)
	return function()
		local line = vim.fn.input("lineNumber:", "", "file")
		vim.cmd(line .. strategy)
	end
end

moveLine = excuteCmdLine("m.")
deleteLine = excuteCmdLine("d")
copyLine = excuteCmdLine("t.")

function getCurrentFileName()
	vim.api.nvim_buf_get_name(0)
end

--[[ function buff_only()
	local bufs = vim.api.nvim_list_bufs()
	local cur_buf = vim.api.nvim_win_get_buf(0) -- 현재 버퍼
	print(cur_buf)
	for k, buf_number in pairs(bufs) do
		if cur_buf ~= buf_number then
			vim.api.nvim_buf_delete(buf_number)
		end
	end
end ]]

local keymap = vim.keymap
--[[ keymap.set("n", "<c-[>", ":lua setTotal()<cr>") ]]
keymap.set("n", "<leader>=", ":lua getPercent()<cr>")

-- line action
keymap.set("n", "<leader>lm", ":lua moveLine()<cr>")
keymap.set("n", "<leader>lp", ":lua copyLine()<cr>")
keymap.set("n", "<leader>ld", ":lua deleteLine()<cr>")

--buffer only
keymap.set("n", "<leader>6", ":%bd|e#|bd#<cr>")
