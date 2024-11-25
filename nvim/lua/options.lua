vim.g.mapleader = " " -- Set the leader key to space
vim.g.maplocalleader = " " -- Set the local leader key to space

vim.opt.backspace = "2" -- Allow backspace over everything in insert mode
vim.opt.showcmd = true -- Show partial commands in the last line of the screen
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.autowrite = true -- Automatically save before commands like :next and :make
vim.opt.cursorline = true -- Do not highlight the line with the cursor
vim.opt.autoread = true -- Automatically reload files if changed outside of Vim

vim.opt.tabstop = 4 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indent
vim.opt.softtabstop = 4 -- Number of spaces a tab counts for when editing
vim.opt.shiftround = true -- Round indent to multiple of 'shiftwidth'
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.opt.swapfile = false -- Do not use a swap file
vim.opt.backup = false -- Disable file backups
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo directory
vim.opt.undofile = true -- Save undo history to an undo file

vim.opt.hlsearch = true -- Disable highlighting of search results
vim.opt.incsearch = true -- Enable incremental search

vim.opt.scrolloff = 8 -- Keep 8 lines above and below the cursor when scrolling
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.isfname:append("@-@") -- Add "@" and "-" to allowed filename characters

vim.opt.updatetime = 50 -- Faster completion by reducing time for swap file write

vim.opt.colorcolumn = "80" -- Highlight the 80th column

vim.wo.relativenumber = true -- Show relative line numbers
vim.wo.number = true -- Show absolute line number of the current line

vim.opt.hidden = true
