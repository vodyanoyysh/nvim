vim.opt.termguicolors = true

function set_theme(color)
    color = color -- or "onedark"
    vim.cmd.colorscheme(color)
end

set_theme("kanagawa-wave")
-- set_theme("onedark")
-- set_theme("dark-decay")
-- set_theme("onedark")
