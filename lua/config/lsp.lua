-- Diagnostics
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- Lua
vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },

	filetypes = { "lua" },

	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".git",
	},

	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},

			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},

			telemetry = {
				enable = false,
			},
		},
	},
})

vim.lsp.enable("lua_ls")

-- Python
vim.lsp.config("basedpyright", {
	cmd = {
		"basedpyright-langserver",
		"--stdio",
	},

	filetypes = { "python" },

	root_markers = {
		"pyproject.toml",
		"pyrightconfig.json",
		"basedpyrightconfig.json",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		".git",
	},

	settings = {
		basedpyright = {
			analysis = {
				diagnosticMode = "openFilesOnly",
				autoImportCompletions = true,
			},
		},
	},
})

vim.lsp.enable("basedpyright")

-- TypeScript / JavaScript / SolidJS
vim.lsp.config("ts_ls", {
	cmd = {
		"typescript-language-server",
		"--stdio",
	},

	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},

	root_markers = {
		"tsconfig.json",
		"jsconfig.json",
		"package.json",
		".git",
	},

	init_options = {
		hostInfo = "neovim",

		disableAutomaticTypingAcquisition = true,

		tsserver = {
			logVerbosity = "off",
		},

		preferences = {
			includeCompletionsForModuleExports = true,
			includeCompletionsForImportStatements = true,
			importModuleSpecifierPreference = "shortest",
		},
	},
})

vim.lsp.enable("ts_ls")
