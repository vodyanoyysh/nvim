local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"phaazon/hop.nvim"},
    {"nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
    	}
    },
    {"nvim-treesitter/nvim-treesitter"},
    -- lsp
    {"neovim/nvim-lspconfig"},
    {"williamboman/mason.nvim"},
    -- themes
    {"navarasu/onedark.nvim", name = "onedark"},
    {"Everblush/nvim", name = "everblush"},
    {"rebelot/kanagawa.nvim"},
    -- auto complite
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"hrsh7th/nvim-cmp"},
    -- telescope
    {"nvim-telescope/telescope.nvim", tag = "0.1.5",
      dependencies = {"nvim-lua/plenary.nvim"}
    },
    -- null ls
    {"jose-elias-alvarez/null-ls.nvim"},
    -- other
    {"windwp/nvim-autopairs",
      event = "InsertEnter",
      opts = {}
    },
    {"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
    {"terrortylor/nvim-comment"},
    {"lewis6991/gitsigns.nvim"},
    {"nvim-lualine/lualine.nvim",
      dependencies = {"nvim-tree/nvim-web-devicons"}
    },
    {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}}
})
