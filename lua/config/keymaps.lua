-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local api = vim.api
-- local lsp = vim.lsp
-- local create_user_command = api.nvim_create_user_command
local this_os = vim.uv.os_uname().sysname

-- Add keymap for the treesitter via Telescope
map("n", "<leader>sI", "<cmd>Telescope treesitter<CR>", { desc = "List Treesitter ..." })

-- create_user_command("InlayHintsToggle", function()
--   lsp.inlay_hint.enable(not lsp.inlay_hint.is_enabled(), nil) -- filter all
-- end, { desc = "Toggle inlay hints" })

-- api.nvim_set_keymap(
--   "n",
--   "<leader>ci",
--   "<cmd>InlayHintsToggle<CR>",
--   { desc = "Toggle inlay hints", noremap = true, silent = true }
-- )

api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = false })
api.nvim_set_keymap("i", "kk", "<ESC>", { noremap = false })

-- keywordprg Windows doesn't have man and it was mapping to "man -s"
if this_os:find("Windows_NT") then
  -- remove the mapping
  vim.keymap.del("n", "<leader>K")
end
