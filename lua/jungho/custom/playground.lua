-- lua 코드 작성해 보는법
--
--
--
local alert = require("notify")

local function getCurrent()
	local pos = vim.api.nvim_win_get_cursor(0)
	alert(vim.inspect(pos))
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

local function getLines()
	--line array
	local lines = vim.api.nvim_buf_get_lines(0, 20, 25, 23)
	alert(vim.inspect(lines))
end

local function setLines()
	-- 이 라인에 추가함
	--[[ vim.api.nvim_buf_set_lines(0, 47, 48, 0, { "test1", "test2" }) ]]
	--line array
	--[[ alert(vim.inspect(lines)) ]]
end

local function eventTest()
	-- 이거 이벤트 처리 할 수 있음 여러개가 있는데
	--[[ local lines = vim.api.nvim_buf_attach(0, true, {
		on_lines = function(a)
        보여줌 여러 이벤트들 중 라인에 변화가 생기면 발생
			 print(a) -> lines 
		end,
	}) ]]
end

--[[ eventTest() ]]

--[[ getLines() ]]

--[[ set_mark()
getCurrent() ]]
