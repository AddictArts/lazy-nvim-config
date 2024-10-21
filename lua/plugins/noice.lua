return {
  "folke/noice.nvim",
  -- so, we skip the lsp notice with a filter, but it might occur in other spots?
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      },
    },
  },
}
