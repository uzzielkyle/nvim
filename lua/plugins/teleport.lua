require("flash").setup({})

vim.keymap.set({ "n", "x", "o" }, "<leader>lf", function()
	require("flash").jump()
end, { desc = "Flash Jump" })

vim.keymap.set({ "n", "x", "o" }, "<leader>lF", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })
