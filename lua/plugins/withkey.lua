local wk = require("which-key")

wk.add({
    { "<leader>e", "<cmd>Neotree float toggle<cr>", desc = "Файловый менеджер", mode = "n" },
    { "<leader>w", "<cmd>w<cr>", desc = "Сохранить", mode = "n" },
    { "<leader>c", "<cmd>BufferLinePickClose<cr>", desc = "Выбрать вкладку для закрытия", mode = "n" },
    { "<leader>/", "<cmd>CommentToggle<cr>", desc = "Комментарий", mode = "n" },
    { "<leader>f", group = "Поиск" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Найти файл", mode = "n" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Найти вкладку", mode = "n" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Найти текст", mode = "n" },
    { "<leader>g", group = "" },
        { "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Перейти к определению", mode = "n" },
        { "<leader>gD", "<cmd>Telescope lsp_implementations<cr>", desc = "Перейти к реализации", mode = "n" },
        { "<leader>gr", "<cmd>Telescope lsp_references<cr>", desc = "Найти использования", mode = "n" },
        { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Git Blame", mode = "n" },
        { "<leader>gg", "<cmd>Neotree float git_status toggle<cr>", desc = "Git Status", mode = "n" },
        { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits", mode = "n" },
        -- {"<leader>i", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc =  "Организовать импорты", mode="n" },

})
