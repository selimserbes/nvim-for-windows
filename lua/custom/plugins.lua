local extension_path = vim.env.HOME .. "\\AppData\\Local\\nvim-data\\mason\\packages\\"

local plugins = {

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
  
  
}
return plugins
