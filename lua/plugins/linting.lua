local lint = require("lint")

lint.linters_by_ft = {
	lua = { "luacheck" },
	python = { "ruff" },
	javascript = { "eslint" },
	javascriptreact = { "eslint" },
	typescript = { "eslint" },
	typescriptreact = { "eslint" },
}


