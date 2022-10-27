require('jungho.plugins-setup')

require('jungho.core.base')
require('jungho.core.highlights')
require('jungho.core.maps')
require('jungho.core.colorscheme')



require('jungho.plugins.autopairs')
require('jungho.plugins.bufferline')
require('jungho.plugins.cmp')
require('jungho.plugins.colorizer')


--lsp
-- require('jungho.plugins.lsp-colors')
require('jungho.plugins.lspconfig')
require('jungho.plugins.lspkind')
require('jungho.plugins.lspsaga')
require('jungho.plugins.mason') -- lsp 다운로드 하는
require('jungho.plugins.null-ls')
require('jungho.plugins.prettier')


require('jungho.plugins.telescope')
require('jungho.plugins.treesitter')
-- require('jungho.plugins.tokyonight')
require('jungho.plugins.ts-autotag')
require('jungho.plugins.web-devicons')
require('jungho.plugins.zen-mode')


require('jungho.plugins.lualine')
-- require('jungho.plugins.neosolarized')
require('jungho.plugins.packer_compiled')




local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('jungho.core.macos')
end
if is_win then
  require('jungho.core.windows')
end
