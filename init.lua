--:help  rtp -> 경로들
require("jungho.plugins-setup") -- lua/jungho/plugins-setup
require("jungho.core.base") -- lua/jungho/core/base
require("jungho.core.highlights") -- lua/jungho/core/highlights
require("jungho.core.keymaps") -- lua/jungho/core/keymaps
require("jungho.core.colorscheme") -- lua/jungho/core/colorscheme

--require("jungho.plugins.ultisnips") -- lua/jungho/plugins/ultisnips

require("jungho.plugins.cmp") -- lua/jungho/plugins/cmp
require("jungho.plugins.autopairs") -- lua/jungho/plugins/autopairs
require("jungho.plugins.bufferline") -- lua/jungho/plugins/bufferline require("jungho.plugins.cmp") -- jungho/plugins/cmp
require("jungho.plugins.colorizer") -- lua/jungho/plugins/colorizer
require("jungho.plugins.web-devicons") -- lua/jungho/plugins/web-devicons

--lsp
-- require('jungho.plugins.lsp-colors')
require("jungho.plugins.lspconfig") -- lua/jungho/plugins/lspconfig
require("jungho.plugins.lspkind") -- lua/jungho/plugins/lspkind
require("jungho.plugins.lspsaga") -- lua/jungho/plugins/lspsaga
require("jungho.plugins.mason") -- lsp 다운로드 하는 -- lua/jungho/plugins/mason
require("jungho.plugins.null-ls") -- lua/jungho/plugins/null-ls
require("jungho.plugins.prettier") -- lua/jungho/plugins/prettier
require("jungho.plugins.eslint") -- lua/jungho/plugins/prettier
require("jungho.plugins.flutter") -- lua/jungho/plugins/flutter

require("jungho.plugins.telescope") -- lua/jungho/plugins/telescope
require("jungho.plugins.treesitter") -- lua/jungho/plugins/treesitter
-- require('jungho.plugins.tokyonight')
require("jungho.plugins.ts-autotag") -- lua/jungho/plugins/ts-autotag
require("jungho.plugins.web-devicons") -- lua/jungho/plugins/web-devicons
require("jungho.plugins.zen-mode") -- lua/jungho/plugins/zen-mode

require("jungho.plugins.lualine") -- lua/jungho/plugins/lualine
require("jungho.plugins.nvim-tree") -- lua/jungho/plugins/nvim-tree

-- git
require("jungho.plugins.git") -- lua/jungho/plugins/git
require("jungho.plugins.gitsigns") -- lua/jungho/plugins/lualine
require("jungho.plugins.fugitive") -- lua/jungho/plugins/fugitive

require("jungho.plugins.comment") -- lua/jungho/plugins/comment
require("jungho.plugins.surround") -- lua/jungho/plugins/surround

-- require('jungho.plugins.neosolarized')
require("jungho.plugins.packer_compiled") -- lua/jungho/plugins/packer_compiled

-- easy motion
require("jungho.plugins.leap") -- lua/jungho/plugins/leap

-- custom fn
require("jungho.custom.fn") -- lua/jungho/custom/fn
require("jungho.custom.playground") -- lua/jungho/custom/playground

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
  require("jungho.core.macos")
end
if is_win then
  require("jungho.core.windows")
end
