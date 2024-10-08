-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local api = vim.api
local lsp = vim.lsp
local create_user_command = api.nvim_create_user_command

map("n", "<leader>si", "<cmd>Telescope treesitter<CR>", { desc = "List Treesitter ..." })

create_user_command("InlayHintsToggle", function()
  lsp.inlay_hint.enable(not lsp.inlay_hint.is_enabled(), nil) -- filter all
end, { desc = "Toggle inlay hints" })

api.nvim_set_keymap(
  "n",
  "<leader>ci",
  "<cmd>InlayHintsToggle<CR>",
  { desc = "Toggle inlay hints", noremap = true, silent = true }
)
