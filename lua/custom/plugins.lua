local extension_path = vim.env.HOME .. "\\AppData\\Local\\nvim-data\\mason\\packages\\"

local plugins = {

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "js-debug-adapter",
        "prettier",
        "stylua",
        "isort",
        "black",
        "eslint-lsp",
        "rust-analyzer",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "rustfmt",
        "codelldb",
        "cpptools",
        "gopls",
        "delve",
        "pyright",
        "ruff",
        "debugpy",
      },
    },
  },
  
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "rust",
        "python",
        "css",
      }
      return opts
    end,
  },
}
return plugins
