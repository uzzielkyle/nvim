require("smear_cursor").setup({
	-- faster
	stiffness = 0.8,
	trailing_stiffness = 0.5,
	distance_stop_animating = 0.5,

	-- smooth caret
	legacy_computing_symbols_support = true,
	distance_stop_animating_vertical_bar = 0.1
})
