return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.opt.termguicolors = true

    vim.keymap.set(
      "n",
      "<Tab>",
      "<Cmd>BufferLineCycleNext<CR>",
      { noremap = true, silent = true }
    )

    vim.keymap.set(
      "n",
      "<S-Tab>",
      "<Cmd>BufferLineCyclePrev<CR>",
      { noremap = true, silent = true }
    )

    local bufferline = require("bufferline")
    bufferline.setup({})
  end,
}
