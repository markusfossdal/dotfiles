return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set(
      "n",
      "<leader>ff",
      builtin.find_files,
      { desc = "Telescope find files" }
    )
    vim.keymap.set(
      "n",
      "<leader>fg",
      builtin.live_grep,
      { desc = "Telescope live grep" }
    )
    vim.keymap.set(
      "n",
      "<leader>fb",
      builtin.buffers,
      { desc = "Telescope buffers" }
    )
    vim.keymap.set(
      "n",
      "<leader>fh",
      builtin.help_tags,
      { desc = "Telescope help tags" }
    )
    vim.keymap.set(
      "n",
      "<leader>fd",
      builtin.diagnostics,
      { desc = "Telescope diagnostics" }
    )

    require("telescope").setup {
      defaults = {
        mappings = {
          i = { -- insert mode
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    }
  end,
}
