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
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope git branches" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Telescope git commits" })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Telescope git status" })

vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Telescope LSP definitions" })
vim.keymap.set("n", "gD", builtin.lsp_implementations, { desc = "Telescope LSP implementations" })
vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Telescope LSP references" })

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

vim.keymap.set("n", "<leader>fc", function()
	require("conform").format({ bufnr = 0 })
end, { desc = "Форматировать текущий буфер" })

-- database
vim.keymap.set("n", "<leader>dd", ":DBUIToggle<CR>")

-- copilot
vim.keymap.set("n", "<leader>bb", ":CopilotChatToggle <CR>", { desc = "Copilot Chat toggle" })

-- diffview
vim.keymap.set("n", "<leader>dvo", ":DiffviewOpen<CR>", { desc = "Diffview open" })
vim.keymap.set("n", "<leader>dvc", ":DiffviewClose<CR>", { desc = "Diffview close" })

vim.keymap.set('n', '<leader>r', function()
  local resize_mode = true
  local status_msg = "РЕЖИМ ИЗМЕНЕНИЯ РАЗМЕРА ОКОН | h/l - ширина | j/k - высота | q/<Esc> - выход"
  
  -- Показываем сообщение в статусной строке
  vim.api.nvim_echo({{status_msg, "WarningMsg"}}, false, {})
  
  -- Создаем локальные маппинги для этого буфера
  local opts = {buffer = 0, silent = true}
  
  -- Маппинги для изменения размеров
  vim.keymap.set('n', 'h', ':vertical resize -5<CR>', opts)
  vim.keymap.set('n', 'l', ':vertical resize +5<CR>', opts)
  vim.keymap.set('n', 'j', ':resize +5<CR>', opts)
  vim.keymap.set('n', 'k', ':resize -5<CR>', opts)
  
  -- Маппинги для более точной настройки
  vim.keymap.set('n', 'H', ':vertical resize -1<CR>', opts)
  vim.keymap.set('n', 'L', ':vertical resize +1<CR>', opts)
  vim.keymap.set('n', 'J', ':resize +1<CR>', opts)
  vim.keymap.set('n', 'K', ':resize -1<CR>', opts)
  
  -- Выход из режима
  local exit_func = function()
    vim.keymap.del('n', 'h', {buffer = 0})
    vim.keymap.del('n', 'l', {buffer = 0})
    vim.keymap.del('n', 'j', {buffer = 0})
    vim.keymap.del('n', 'k', {buffer = 0})
    vim.keymap.del('n', 'H', {buffer = 0})
    vim.keymap.del('n', 'L', {buffer = 0})
    vim.keymap.del('n', 'J', {buffer = 0})
    vim.keymap.del('n', 'K', {buffer = 0})
    vim.keymap.del('n', '<Esc>', {buffer = 0})
    vim.keymap.del('n', 'q', {buffer = 0})
    vim.api.nvim_echo({{"Режим изменения размера выключен", "Normal"}}, false, {})
  end
  
  vim.keymap.set('n', '<Esc>', exit_func, opts)
  vim.keymap.set('n', 'q', exit_func, opts)
end, {desc = 'Войти в режим изменения размеров окон'})

