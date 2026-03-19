-- Override snacks defaults to show hidden files in the explorer, find files, and live grep
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = false,
          },
          files = {
            hidden = true,
            ignored = false,
          },
        },
      },
    },
  },
}
