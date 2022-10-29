local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"quangnguyen30192/cmp-nvim-ultisnips",
			config = function()
				-- optional call to setup (see customization section)
				require("cmp_nvim_ultisnips").setup({})
			end,
			-- If you want to enable filetype detection based on treesitter:
			-- requires = { "nvim-treesitter/nvim-treesitter" },
		},
		config = function()
			local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
			require("cmp").setup({
				snippet = {
					expand = function(args)
						vim.fn["UltiSnips#Anon"](args.body)
					end,
				},
				sources = {
					{ name = "ultisnips" },
					-- more sources
				},
				-- recommended configuration for <Tab> people:
				mapping = {
					["<Tab>"] = cmp.mapping(function(fallback)
						cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
					end, {
						"i",
						"s", --[[ "c" (to enable the mapping in command mode) ]]
					}),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						cmp_ultisnips_mappings.jump_backwards(fallback)
					end, {
						"i",
						"s", --[[ "c" (to enable the mapping in command mode) ]]
					}),
				},
			})
		end,
	})

	-- use("hrsh7th/nvim-cmp") -- Completion
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("tpope/vim-fugitive")
	-- use("tpope/vim-commentary")
	-- use("tpope/vim-surround")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use("tpope/vim-repeat")

	--ultisnips
	use("SirVer/ultisnips")

	-- colorscheme
	-- use 'junegunn/seoul256.vim'
	-- use 'arcticicestudio/nord-vim'
	-- use 'morhetz/gruvbox'
	use("joshdick/onedark.vim")

	-- LSP

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
	})

	use("neovim/nvim-lspconfig")
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("MunifTanjim/prettier.nvim")

	use("L3MON4D3/LuaSnip")

	--treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-treesitter/nvim-treesitter-textobjects")

	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("norcalli/nvim-colorizer.lua")
	use("folke/zen-mode.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("akinsho/nvim-bufferline.lua")
	-- use 'github/copilot.vim'

	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		config = [[require('config.nvim-tree')]],
	})
end)
