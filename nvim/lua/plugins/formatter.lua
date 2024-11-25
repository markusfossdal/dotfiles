return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          yaml = { "prettier" }, -- reqires npm installed (brew)
          markdown = { "prettier" }, -- reqires npm installed (brew)
          json = { "prettier" }, -- reqires npm installed (brew)
          cpp = { "clang-format" },
          rust = { "rustfmt" }, --deprecated?
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        },
      })
      -- keymaps
      vim.keymap.set({ "n", "v" }, "<leader>f", function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },
  {
    "zapling/mason-conform.nvim",
    dependencies = { "stevearc/conform.nvim" },
    config = function()
      require("mason-conform").setup({
        ignored_install = {},
      })
    end,
  },
}
