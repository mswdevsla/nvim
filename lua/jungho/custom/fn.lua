function inputTextCurrentCursor(text)
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos) .. text .. line:sub(pos + 1)


	vim.api.nvim_set_current_line(nline)
end

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

	local percent = n / total * 100 .. "%"
	inputTextCurrentCursor(percent)
end

local keymap = vim.keymap
--[[ keymap.set("n", "<c-[>", ":lua setTotal()<cr>") ]]
keymap.set("n", "<leader>1", ":lua getPercent()<cr>")
