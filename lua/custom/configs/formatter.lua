local conform = require "conform"

conform.setup {
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    lua = { "stylua" },
    python = { "ruff", "black", "isort" },
    rust = { "rustfmt" },
    go = { "gofumpt", "goimports_reviser", "golines" },
  },

  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
}
