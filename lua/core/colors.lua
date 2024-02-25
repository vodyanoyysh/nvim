vim.opt.termguicolors = true

function set_theme(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
end

-- set_theme("kanagawa-dragon")
set_theme("dark-decay")
