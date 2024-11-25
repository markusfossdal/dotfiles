return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<c-h>", ":TmuxNavigateLeft<cr>")
    vim.keymap.set("n", "<c-j>", ":TmuxNavigateDown<cr>")
    vim.keymap.set("n", "<c-k>", ":TmuxNavigateUp<cr>")
    vim.keymap.set("n", "<c-l>", ":TmuxNavigateRight<cr>")
    vim.keymap.set("n", "<c-\\>", ":TmuxNavigatePrevious<cr>")
  end,
}
