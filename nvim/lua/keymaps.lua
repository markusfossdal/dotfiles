--clear search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

--open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map Shift-W to go to the far right of the line
vim.keymap.set("n", "<S-W>", "$", { noremap = true, silent = true })
vim.keymap.set("v", "<S-W>", "$", { noremap = true, silent = true })

-- Map Shift-B to go to the far left of the line
vim.keymap.set("n", "<S-B>", "0", { noremap = true, silent = true })
vim.keymap.set("v", "<S-B>", "0", { noremap = true, silent = true })

--Cursor in the same pos while pasting
vim.keymap.set("n", "J", "mzJ`z", { noremap = true, silent = true })

-- Half page orienting
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- replace current line with yank buffer, and keep yank buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- use <leader>y to yank into system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- deletes to blackhole register
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- disable Q
vim.keymap.set("n", "Q", "<Nop>")
vim.keymap.set("n", "q", "<Nop>")

-- remap Ctrl-C to ESC
vim.keymap.set("i", "<C-c>", "<Esc>")

-- replace current word with:
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- change inner word
--vim.keymap.set('n', '<leader>cw', 'ciw')

-- simpler navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- h anv v splits
vim.keymap.set(
  "n",
  "<leader>v",
  ":vsplit<CR>",
  { noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<leader>h",
  ":split<CR>",
  { noremap = true, silent = true }
)
