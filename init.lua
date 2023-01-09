--:help  rtp -> 경로들
require("sunwoong.plugins-setup") -- lua/sunwoong/plugins-setup
require("sunwoong.core.base") -- lua/sunwoong/core/base
require("sunwoong.core.highlights") -- lua/sunwoong/core/highlights
require("sunwoong.core.keymaps") -- lua/sunwoong/core/keymaps
require("sunwoong.core.colorscheme") -- lua/sunwoong/core/colorscheme

--require("sunwoong.plugins.ultisnips") -- lua/sunwoong/plugins/ultisnips

require("sunwoong.plugins.cmp") -- lua/sunwoong/plugins/cmp
require("sunwoong.plugins.autopairs") -- lua/sunwoong/plugins/autopairs
require("sunwoong.plugins.bufferline") -- lua/sunwoong/plugins/bufferline require("sunwoong.plugins.cmp") -- sunwoong/plugins/cmp
require("sunwoong.plugins.colorizer") -- lua/sunwoong/plugins/colorizer
require("sunwoong.plugins.web-devicons") -- lua/sunwoong/plugins/web-devicons

--lsp
-- require('sunwoong.plugins.lsp-colors')
require("sunwoong.plugins.lspconfig") -- lua/sunwoong/plugins/lspconfig
require("sunwoong.plugins.lspkind") -- lua/sunwoong/plugins/lspkind
require("sunwoong.plugins.lspsaga") -- lua/sunwoong/plugins/lspsaga
require("sunwoong.plugins.mason") -- lsp 다운로드 하는 -- lua/sunwoong/plugins/mason
require("sunwoong.plugins.null-ls") -- lua/sunwoong/plugins/null-ls
require("sunwoong.plugins.prettier") -- lua/sunwoong/plugins/prettier
require("sunwoong.plugins.eslint") -- lua/sunwoong/plugins/prettier
require("sunwoong.plugins.flutter") -- lua/sunwoong/plugins/flutter
require("sunwoong.plugins.dart") -- lua/sunwoong/plugins/dart

require("sunwoong.plugins.telescope") -- lua/sunwoong/plugins/telescope
require("sunwoong.plugins.treesitter") -- lua/sunwoong/plugins/treesitter
-- require('sunwoong.plugins.tokyonight')
require("sunwoong.plugins.tokyonight2") -- lua/sunwoong/plugins/tokyonight2
require("sunwoong.plugins.ts-autotag") -- lua/sunwoong/plugins/ts-autotag
require("sunwoong.plugins.web-devicons") -- lua/sunwoong/plugins/web-devicons
require("sunwoong.plugins.zen-mode") -- lua/sunwoong/plugins/zen-mode

require("sunwoong.plugins.lualine") -- lua/sunwoong/plugins/lualine
require("sunwoong.plugins.nvim-tree") -- lua/sunwoong/plugins/nvim-tree

-- git
require("sunwoong.plugins.git") -- lua/sunwoong/plugins/git
require("sunwoong.plugins.gitsigns") -- lua/sunwoong/plugins/lualine
require("sunwoong.plugins.fugitive") -- lua/sunwoong/plugins/fugitive

require("sunwoong.plugins.comment") -- lua/sunwoong/plugins/comment
require("sunwoong.plugins.surround") -- lua/sunwoong/plugins/surround

-- require('sunwoong.plugins.neosolarized')
require("sunwoong.plugins.packer_compiled") -- lua/sunwoong/plugins/packer_compiled

-- easy motion
require("sunwoong.plugins.leap") -- lua/sunwoong/plugins/leap

-- custom fn
require("sunwoong.custom.fn") -- lua/sunwoong/custom/fn
require("sunwoong.custom.playground") -- lua/sunwoong/custom/playground

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
  require("sunwoong.core.macos")
end
if is_win then
  require("sunwoong.core.windows")
end
