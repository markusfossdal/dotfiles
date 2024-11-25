return {
  "nvim-treesitter/nvim-treesitter",

  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "toml",
        "rust",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
    }
  end,
}
