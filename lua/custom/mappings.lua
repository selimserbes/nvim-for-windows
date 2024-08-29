local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.spectre = {
  n = {
    -- Open Spectre
    ["<leader>ss"] = { "<cmd>lua require('spectre').open()<CR>", "Open Spectre" },

    -- Search and replace in the current file
    ["<leader>sw"] = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", "Search current file" },

    -- Search and replace in the project/directory
    ["<leader>sp"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search in project" },

    -- Search the current word
    ["<leader>sc"] = { "<cmd>lua require('spectre').open_visual()<CR>", "Search current word" },
  },
}

return M
