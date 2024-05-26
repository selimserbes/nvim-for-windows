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




end
