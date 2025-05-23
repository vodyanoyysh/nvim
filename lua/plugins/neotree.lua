vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" })


require("neo-tree").setup({
    filesystem = {
        filtred_items = {
            hide_by_name = {"__pycache__"},
            hide_dotfiles = false,
            hide_gitignored = false,
        }
    }
})
