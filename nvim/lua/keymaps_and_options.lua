vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop= 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME").."/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.wo.relativenumber = true --relative line numbering
vim.wo.number = true -- line numbering

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') -- clear search
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- open file explore

vim.keymap.set('v', 'J', ":m '>+1<CR>:noh<CR>")
vim.keymap.set('v', 'K', ":m '<-2<CR>:noh<CR>")

-- Map Shift-W to go to the far right of the line
vim.keymap.set('n', '<S-W>', '$', { noremap = true, silent = true })

-- Map Shift-B to go to the far left of the line
vim.keymap.set('n', '<S-B>', '0', { noremap = true, silent = true })

--Cursor in the same pos while pasting
vim.keymap.set('n', 'J', 'mzJ`z', { noremap = true, silent = true })

-- Half page orienting
vim.keymap.set('n','<C-d>','<C-d>zz',{noremap = true, silent = true})
vim.keymap.set('n','<C-u>','<C-u>zz',{noremap = true, silent = true})

-- Keep search terms in the middle
vim.keymap.set('n','n','nzzzv',{noremap = true, silent = true})
vim.keymap.set('n','N','Nzzzv',{noremap = true, silent = true})


-- replace current line with yank buffer, and keep yank buffer
vim.keymap.set('x', '<leader>p', "\"_dP")

-- use <leader>y to yank into system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

-- deletes to blackhole register
vim.keymap.set('n','<leader>d','\"_d')
vim.keymap.set('v','<leader>d','\"_d')

-- disable Q
vim.keymap.set('n','Q','<nop>')


-- remap Ctrl-C to ESC
vim.keymap.set('i','<C-c>','<Esc>')


-- replace current word with:
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])












