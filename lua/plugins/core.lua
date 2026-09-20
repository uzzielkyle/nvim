vim.pack.add({
	-- File tree
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },

	-- Tree-sitter
	{ src = "https://github.com/romus204/tree-sitter-manager.nvim" },

	-- Formatter
	{ src = "https://github.com/stevearc/conform.nvim" },

	-- Linter
	{ src = "https://github.com/mfussenegger/nvim-lint" },

	-- Completion
	{ src = "https://github.com/Saghen/blink.lib" },
	{ src = "https://github.com/Saghen/blink.cmp" },

	-- Colorscheme
	{ src = "https://github.com/AvengeMedia/base46" },

	-- File Finding
	{ src = "https://github.com/echasnovski/mini.pick" },
})

require("tree-sitter-manager").setup({
	ensure_installed = {
		"lua",
		"python",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"html",
		"css",
	},
})

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
	},
})

require("blink.cmp").setup({
	keymap = {
		preset = "default",
	},

	completion = {
		documentation = {
			auto_show = true,
		},
	},

	sources = {
		default = {
			"lsp",
			"path",
			"buffer",
		},
	},
})

local lint = require("lint")

lint.linters_by_ft = {
	lua = { "luacheck" },
	python = { "ruff" },
	javascript = { "eslint" },
	javascriptreact = { "eslint" },
	typescript = { "eslint" },
	typescriptreact = { "eslint" },
}

require("mini.pick").setup()
