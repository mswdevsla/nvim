-- local status, _ = pcall(vim.cmd, "colorscheme nord")
-- local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
  print("colorscheme not found!!")
  return
end
