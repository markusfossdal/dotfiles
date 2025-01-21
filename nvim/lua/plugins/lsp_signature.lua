return {
  "ray-x/lsp_signature.nvim",
  config = function()
    require("lsp_signature").setup({
      floating_window = true, -- Show function signatures in a floating window
      hint_enable = false, -- Disable virtual text hints to avoid redundancy
      hi_parameter = "LspSignatureActiveParameter", -- Highlight the current argument
    })
    -- set C-k as toggle to hide/show signature.
    vim.keymap.set(
      "i",
      "<C-k>",
      [[<Cmd>lua require('lsp_signature').toggle_float_win()<CR>]],
      { noremap = true, silent = true },

      -- opens signature help on cursor
      vim.keymap.set("n", "<leader>", function()
        vim.lsp.buf.signature_help()
      end, {
        noremap = true,
        silent = true,
        desc = "Show signature help for function under cursor",
      })
    )
  end,
}
