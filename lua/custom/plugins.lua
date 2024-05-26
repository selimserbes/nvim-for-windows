local extension_path = vim.env.HOME .. "\\AppData\\Local\\nvim-data\\mason\\packages\\"

local plugins = {
  
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings "gopher"
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dap"
      require("core.utils").load_mappings "dap"
    end,
  },

  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
    config = function(_)
      vim.g.crystal_auto_format = 1
    end,
  },
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
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
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
