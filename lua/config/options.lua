-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local this_os = vim.uv.os_uname().sysname

-- The path is different on Windows
if this_os:find("Windows_NT") then
  -- Windows powershell use pwsh.exe
  opt.shell = "pwsh"
end

-- disable zig fmt on save since it currently errors
vim.g.zig_fmt_autosave = 0
