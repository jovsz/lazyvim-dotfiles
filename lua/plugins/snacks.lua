return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        style = "float",
        width = math.floor(vim.o.columns * 2),
        height = math.floor(vim.o.lines * 2),
      },
    },
  },
}
