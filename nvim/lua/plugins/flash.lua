return {
  "folke/flash.nvim",
  event = "VeryLazy",
  config = function()
    local flash = require("flash")

    -- Automatically use flash.nvim for `/` searches
    vim.api.nvim_create_autocmd("CmdlineEnter", {
      pattern = "/",
      callback = function()
        flash.toggle(true) -- Enable flash search when entering `/`
      end,
    })

    -- Optionally disable flash.nvim when exiting the search (CmdlineLeave)
    vim.api.nvim_create_autocmd("CmdlineLeave", {
      pattern = "/",
      callback = function()
        flash.toggle(false) -- Disable flash after leaving the search
      end,
    })
  end,
}
