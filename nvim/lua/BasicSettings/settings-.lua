local set = vim.opt

set.spelllang = { "en_us", "ru" }
set.number = true
set.relativenumber = true
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.swapfile = false

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 7
set.fileencoding = "utf-8"
set.termguicolors = true

set.cursorline = true

set.hidden = true
set.colorcolumn = "80"

vim.api.nvim_exec(
	[[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]],
	false
)
