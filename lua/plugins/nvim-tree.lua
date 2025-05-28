return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    {
      "<leader>Nf",
      "<cmd>NvimTreeFindFile <CR>",
      mode = "",
      desc = "Find in NvimTree",
    },
    {
      "<leader>NF",
      "<cmd>NvimTreeFocus <CR>",
      mode = "",
      desc = "Focus NvimTree",
    },
    {
      "<leader>Nn",
      "<cmd>NvimTreeToggle <CR>",
      mode = "",
      desc = "Toggle NvimTree",
    },
    {
      "<leader>Nc",
      "<cmd>NvimTreeCollapse <CR>",
      mode = "",
      desc = "Collapse NvimTree",
    },
    {
      "<leader>Nr",
      "<cmd>NvimTreeRefresh <CR>",
      mode = "",
      desc = "Refresh NvimTree",
    },
  },
  lazy = false,
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end,
}
