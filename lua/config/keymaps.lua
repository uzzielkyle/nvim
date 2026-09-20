vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- SAVE
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", {
	desc = "Save File",
})

vim.keymap.set("n", "<leader>W", "<cmd>w!<CR>", {
	desc = "Force Save File",
})

-- QUIT
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", {
	desc = "Quit Neovim",
})

vim.keymap.set("n", "<leader>Q", "<cmd>qa!<CR>", {
	desc = "Force quit Neovim",
})

-- SEARCH
vim.keymap.set("n", "n", "n", {
	desc = "Next search match",
})

vim.keymap.set("n", "N", "N", {
	desc = "Previous search match",
})

vim.keymap.set("n", "<Esc>", function()
	vim.cmd("nohlsearch")
	vim.fn.setreg("/", "")
end, {
	desc = "Clear search",
})

-- BUFFER
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", {
	desc = "Close buffer",
})

-- PLUGINS:
-- file manager - nvim-tree
vim.keymap.set("n", "<leader>e", function()
	local api = require("nvim-tree.api")

	if api.tree.is_visible() then
		vim.cmd("wincmd p")
	else
		api.tree.open()
	end
end, { desc = "Open file tree / return to buffer" })

vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeClose<CR>", {
	desc = "Close file tree",
})

-- formatter - conform
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, {
	desc = "Format buffer",
})

-- file finding - mini.pick
vim.keymap.set("n", "<leader>ff", function()
	MiniPick.builtin.files()
end, {
	desc = "Find files",
})
