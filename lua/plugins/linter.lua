local lint = require("lint")

lint.linters_by_ft = {
	lua = { "luacheck" },
	python = { "ruff" },

	javascript = { "biomejs" },
	javascriptreact = { "biomejs" },
	typescript = { "biomejs" },
	typescriptreact = { "biomejs" },
	json = { "biomejs" },
	jsonc = { "biomejs" },
	css = { "biomejs" },

	rust = { "clippy" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})
