return {
  "NeogitOrg/neogit",
  commit = "9b624f2caed2300489796ec16ad01fca1dc36963",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "ibhagwan/fzf-lua", -- while already the default in LazyVim, I will keep it explicit here.
  },
  keys = {
    {
      "<leader>gn",
      "<cmd>Neogit <CR>",
      mode = "",
      desc = "Neogit",
    },
  },
  config = true,
  opts = {
    graph_style = "unicode", -- or "ascii" the default
  },
}
