local keymap = vim.keymap
vim.g.mapleader = " "
keymap.set("n", "<leader>rc", ":leftabove vnew ~/.config/nvim/init.lua<cr>")

-- keymap.set('n', 'x', '"_x')

-- Increment/decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all
-- keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set("n", "<leader><cr>", ":noh<cr>")
-- Split window
--[[ keymap.set("n", "<leader>s", ":split<Return><C-w>w") ]]
keymap.set("n", "<leader>v", ":vsplit<Return><C-w>w")
keymap.set("n", "<leader><leader>", ":w<cr>")
keymap.set("n", "<leader>q", ":q<cr>")
-- Move window
--keymap.set('n', '<Space>', '<C-w>w')
keymap.set("", "<left>", "<C-w>h")
keymap.set("", "<up>", "<C-w>k")
keymap.set("", "<down>", "<C-w>j")
keymap.set("", "<right>", "<C-w>l")

-- Resize window
keymap.set("n", "-", ":vertical resize -5<cr>")
keymap.set("n", "=", ":vertical resize +5<cr>")
--buffer
keymap.set("n", "<leader>1", ":bfirst<cr>")
keymap.set("n", "<leader>2", ":bp<cr>")
keymap.set("n", "<leader>3", ":b#<cr>")
keymap.set("n", "<leader>4", ":bn<cr>")
keymap.set("n", "<leader>d", ":bd<cr>")

--복붙
keymap.set("n", "<leader>p", "ciw<C-r>0<Esc>")

keymap.set("n", "cll", "yiwoconsole.log(<c-r>0)")
keymap.set("i", "cll", "console.log()<left>")
keymap.set("i", "arwf", "() => {}<ESC>F(a")
keymap.set("n", "<leader>j", "''")

--terminal
keymap.set("n", "<c-\\>", ":tabedit term://zsh<cr>")
keymap.set("t", "<esc>", "<c-\\><c-n>")
--[[ keymap.set("n", "<A-o>", ":tabedit term://zsh ") ]]
