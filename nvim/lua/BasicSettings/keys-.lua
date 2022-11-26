local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local exec = vim.api.nvim_exec

vim.g.mapleader = ","

-- General mappings
map("i", "jk", "<esc>", opts) -- From Insert Mode to Normal mode just press jk
map("", "<leader><SPACE>", ":nohlsearch<CR>", opts) -- After search to turn off highlight press ,SPACE

-- Comment Lua & Python code
map("v", "lc", ":norm i--<CR>", opts) -- Press V to activate Visual mode, select some text, press cc to comment LUA code
map("v", "ul", ":norm ^xx<CR>", opts) -- Press V to activate Visual mode, to Uncomment Lua code

map("v", "cc", ":norm i#<CR>", opts) -- Press V to activate Visual mode, select some text, press cc to comment Python code
map("v", "uc", ":norm ^x<CR>", opts) -- Press V to activate Visual mode, to Uncomment Python code

-- Split the window
map("n", "<leader>sv", "<C-w>v<CR>", opts)
map("n", "<leader>sh", "<C-w>s<CR>", opts)
map("n", "<leader>se", "<C-w>=<CR>", opts)
map("n", "<leader>sx", ":close<CR>", opts)

--Max & restore  current window
map("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- Move arround tabs
map("n", "<leader>to", ":tabnew<CR>", opts)
map("n", "<leader>tx", ":tabclose<CR>", opts)
map("n", "<leader>tn", ":tabn<CR>", opts)
map("n", "<leader>tp", ":tabp<CR>", opts)

-- formats the current buffer
map("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)

-- shift + F1 Delete empty lines
map("n", "<S-F1>", ":g/^$/d<CR>", opts)

-- Open & close NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>f", ":NvimTreeFocus<CR>", opts)

-- Barbar mappings
-- Goto buffer in position...
map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)

-- Telescope mappings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>gc", ":Telescope git_commits<CR>", opts)

map("n", "<SPACE>t", ":ToggleTerm<CR>", opts)

-- Run current python file in shell

-- map('n', '<F5>', "<ESC>:w<CR>:exec '!python3 %' shellescape(@%, 1) <CR>", opts)
map("n", "<A-CR>", ":w<CR>:exec '!python3 ' shellescape(@%, 1) <CR>", opts)
map("n", "<A-CR>", "<esc>:w<CR>:exec '!python3 ' shellescape(@%) <CR>", opts)

-- map("n", "<A-CR>", ":TermExec cmd='python3 %' size=10 direction=horizontal <CR>", opts)
