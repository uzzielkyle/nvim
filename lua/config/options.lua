vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
-- Numbers
vim.opt.number = true
vim.opt.relativenumber=true
vim.opt.cursorline = true

-- Copy
vim.opt.clipboard = "unnamedplus"

-- Tabs
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.list = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Display
vim.opt.sidescroll = 1
vim.opt.sidescrolloff = 8

-- TUI
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Fold
vim.opt.foldenable = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.fixendofline = true

vim.opt.completeopt = {
	"menu",
	"menuone",
	"noselect",
}
