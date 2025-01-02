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

lspconfig.ts_ls.setup({
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifierPreference = "non-relative",
      },
    },
  },
})

lspconfig.html.setup({
  settings = {
    html = {
      suggest = {
        completion = {
          enabled = true,
          emmet = true,
        },
      },
    },
  },
})

lspconfig.cssls.setup({
  settings = {
    css = {
      validate = true,
    },
  },
})

lspconfig.volar.setup({
  settings = {
    vetur = {
      completion = {
        autoImport = true,
        tagCasing = "kebab",
      },
    },
  },
})
