local lspconfig = require("lspconfig")

local lspconfig = require("lspconfig")

-- Python
lspconfig.pyright.setup({
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "off",          -- Режим строгой проверки типов
          autoImportCompletions = true,      -- Автодополнение для импортов
          diagnosticMode = "workspace",      -- Анализирует сразу весь проект
          useLibraryCodeForTypes = true,     -- Учитывает типы из внешних библиотек
        },
      },
    },
  })

-- Golang
lspconfig.gopls.setup({
  settings = {
    gopls = {
      usePlaceholders = true,
      completeUnimported = true,
    },
  },
})