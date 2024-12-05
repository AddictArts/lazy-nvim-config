-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- proto filetype issue with clangd ls, manually using
-- :lua vim.lsp.get_client_by_id(?).stop() or autocmd
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "proto" },
  callback = function()
    for _, server in ipairs(vim.lsp.Clients) do
      if server.name == "clangd" then
        -- vim.lsp.get_client_by_id(server.id).stop()
        vim.lsp.buf_detach_client(0, server.id)
      end
    end
  end,
})
