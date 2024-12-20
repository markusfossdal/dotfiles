-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath) -- Prepend the specified path to Vim's runtime path

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins.cmp" },
    { import = "plugins.comment" },
    { import = "plugins.flash" },
    { import = "plugins.lsp" },
    { import = "plugins.lsp_signature" },
    { import = "plugins.theme" },
    { import = "plugins.tree_sitter" },
    { import = "plugins.telescope" },
    { import = "plugins.nvim_tree" },
    { import = "plugins.bufferline" },
    { import = "plugins.vim_tmux_navigator" },
    { import = "plugins.formatter" }, --load after lsp for mason-conform to work.
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
