local status, icons = pcall(require, "nvim-web-devicons")
if not status then
	return
end

icons.setup({
	-- your personnal icons can go here (to override)
	-- DevIcon will be appended to `name`
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "Zsh",
		},
	},
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	color_icons = true,
	default = true,
})
