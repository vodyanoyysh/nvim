-- Настройка vim-dadbod и vim-dadbod-ui для работы с базами данных
-- а также интеграция с автодополнением

-- Проверяем, загружен ли nvim-cmp
local has_cmp, cmp = pcall(require, "cmp")

-- Настройка DBUI
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_show_database_icon = 1
vim.g.db_ui_force_echo_notifications = 1
vim.g.db_ui_win_position = "left"
vim.g.db_ui_auto_execute_table_helpers = 1

-- Настройка расширенного автодополнения
vim.g.vim_dadbod_completion_mark = "󱘖 "

-- Функция для настройки автодополнения в SQL файлах
local function setup_sql_cmp()
  if has_cmp then
    -- Добавляем источник автодополнения для SQL
    cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
      sources = cmp.config.sources({
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
        { name = "path" },
      })
    })
  end
end

-- Автоматическая настройка для SQL файлов
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    setup_sql_cmp()
  end,
})

-- Автоматическая настройка для буферов, созданных vim-dadbod-ui
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "dbout", "dbui" },
  callback = function()
    vim.opt_local.buftype = "nofile"
  end,
})

