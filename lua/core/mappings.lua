local builtin = require("telescope.builtin")

vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree float toggle<CR>")
vim.keymap.set("n", "<leader>gg", ":Neotree float git_status toggle<CR>")


-- BufferLine
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>") -- next tab
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>") -- close tab

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Telescope git branches' })
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Telescope git commits' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })

vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Telescope LSP definitions' })
vim.keymap.set('n', 'gD', builtin.lsp_implementations, { desc = 'Telescope LSP implementations' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Telescope LSP references' })

-- nav
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "|", ":vsplit<CR>") -- vertical split
vim.keymap.set("n", "---", ":split<CR>")

-- git
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame <CR>") -- git blame

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>w", ":w<CR>") -- save

-- database
vim.keymap.set("n", "<leader>dd", ":DBUIToggle<CR>")