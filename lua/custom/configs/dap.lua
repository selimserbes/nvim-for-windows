local dap = require "dap"
local extension_path = vim.env.HOME .. "\\AppData\\Local\\nvim-data\\mason\\packages\\"

dap.adapters.delve = {
  type = "server",
  port = "${port}",
  executable = {
    command = extension_path .. "delve\\dlv.exe",
    args = { "dap", "-l", "127.0.0.1:${port}" },
    -- add this if on windows, otherwise server won't open successfully
    detached = false,
  },
}
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
}

dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = extension_path .. "codelldb\\extension\\adapter\\codelldb.exe",
    args = { "--port", "${port}" },
    -- On windows you may have to uncomment this:
    detached = false,
  },
}

dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}


end
