require("conform").setup({
	format_on_save = function(bufnr)
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		local bufname = vim.api.nvim_buf_get_name(bufnr)

		local excluded_dirs = {
			"/node_modules/",
			"/%.venv/",
			"/venv/",
			"/vendor/",
			"/target/",
			"/dist/",
			"/build/",
			"/%.git/",
		}

		for _, pattern in ipairs(excluded_dirs) do
			if bufname:match(pattern) then
				return
			end
		end
		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
	default_format_opts = {
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format" },
		markdown = { "prettier" },
		json = { "biome", "prettier", stop_after_first = true },
		javascript = { "biome", "prettier", stop_after_first = true },
		typescript = { "biome", "prettier", stop_after_first = true },
		typescriptreact = { "biome", "prettier", stop_after_first = true },
		css = { "biome", "prettier", stop_after_first = true },
		html = { "biome", "prettier", stop_after_first = true },
		rust = { "rustfmt" },
	},
})
