require("blink.cmp").setup({
	appearance = {
		nerd_font_variant = "mono",
	},

	keymap = {
		preset = "default",
	},

	completion = {
		menu = {
			draw = {
				padding = 2,
				gap = 2,
				columns = {
					{ "kind_icon" },
					{ "label", gap = 1 },
					{ "kind" },
					{ "source_name" },
				},
			},
		},

		ghost_text = {
			enabled = false,
		},
	},

	sources = {
		default = {
			"lsp",
			"path",
			"buffer",
		},
	},

	signature = {
		enabled = true,
	},
})
