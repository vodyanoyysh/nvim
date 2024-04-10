local builtin = require("telescope.builtin")


vim.g.mapleader = " "


-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree float focus<CR>") -- file explorer



-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- nav
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
vim.keymap.set("n", "|", ":vsplit<CR>") -- vertical split
vim.keymap.set("n", "---", ":split<CR>")

-- buffers
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>") -- next tab
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>") -- close tab

-- git
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame <CR>") -- git blame


-- other
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>w", ":w<CR>") -- save


-- cheat sheet
-- gd - go to def
-- gD - go to dec
-- ctrl + t - go back
