local status, tokyonight = pcall(require, "tokyonight")
if not status then
	return
end

tokyonight.setup({
	style = "moon",
	on_colors = function(colors)
		colors.hint = colors.orange
		colors.error = "#ff5900"
	end,
})

vim.cmd("colorscheme tokyonight-moon")
