require("jungho.plugins-setup") -- jungho/plugins-setup
require("jungho.core.base") -- lua/jungho/core/base
require("jungho.core.highlights") -- jungho/core/highlights
require("jungho.core.maps") -- jungho/core/maps
require("jungho.core.colorscheme") -- jungho/core/colorscheme

require("jungho.plugins.autopairs") -- jungho/plugins/autopairs
require("jungho.plugins.bufferline") -- jungho/plugins/bufferline require("jungho.plugins.cmp") -- jungho/plugins/cmp
require("jungho.plugins.colorizer") -- jungho/plugins/colorizer
require("jungho.plugins.web-devicons") -- jungho/plugins/web-devicons

--lsp
-- require('jungho.plugins.lsp-colors')
require("jungho.plugins.lspconfig") -- jungho/plugins/lspconfig
require("jungho.plugins.lspkind") -- jungho/plugins/lspkind
require("jungho.plugins.lspsaga") -- jungho/plugins/lspsaga
require("jungho.plugins.mason") -- lsp 다운로드 하는 -- jungho/plugins/mason
require("jungho.plugins.null-ls") -- jungho/plugins/null-ls
require("jungho.plugins.prettier") -- jungho/plugins/prettier

require("jungho.plugins.telescope") -- jungho/plugins/telescope
require("jungho.plugins.treesitter") -- jungho/plugins/treesitter
-- require('jungho.plugins.tokyonight')
require("jungho.plugins.ts-autotag") -- jungho/plugins/ts-autotag
require("jungho.plugins.web-devicons") -- jungho/plugins/web-devicons
require("jungho.plugins.zen-mode") -- jungho/plugins/zen-mode

require("jungho.plugins.lualine") -- jungho/plugins/lualine
require("jungho.plugins.nvim-tree") -- jungho/plugins/nvim-tree

-- git
require("jungho.plugins.git") -- jungho/plugins/lualine
require("jungho.plugins.gitsigns") -- jungho/plugins/lualine

-- require('jungho.plugins.neosolarized')
require("jungho.plugins.packer_compiled") -- jungho/plugins/packer_compiled

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("jungho.core.macos")
end
if is_win then
	require("jungho.core.windows")
end
