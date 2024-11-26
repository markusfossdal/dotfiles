return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true

    -- keymaps
    vim.keymap.set(
      "n",
      "<leader>pv",
      ":NvimTreeToggle<CR>",
      { noremap = true, silent = true }
    )

    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,

      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
        -- mappsings = {
        --   { key = "v", action = "vsplit" }, -- Vertical split
        --   { key = "s", action = "split" }, -- Horizontal split
        -- },
      },

      git = {
        enable = true, -- Enable git integration
        ignore = false, -- Show files listed in .gitignore
        timeout = 400, -- Time (ms) to wait for git commands
      },

      diagnostics = {
        enable = true, -- Enable diagnostics integration
        show_on_dirs = true, -- Show diagnostics for directories
        debounce_delay = 50, -- Delay (ms) to debounce diagnostics
        icons = {
          hint = "", -- Icon for hint-level diagnostics
          info = "", -- Icon for info-level diagnostics
          warning = "", -- Icon for warning-level diagnostics
          error = "", -- Icon for error-level diagnostics
        },
      },

      filters = {
        dotfiles = false,
      },
      actions = {
        open_file = {
          quit_on_open = false, -- Close nvim-tree after opening a file
        },
      },
    })
  end,
}
