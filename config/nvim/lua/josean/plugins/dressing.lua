return {
	"stevearc/dressing.nvim",
	event = "VeryLazy",
	opts = {
		-- change highlighting for dressing windows
		input = {
			win_options = {
				winhighlight = "NormalFloat:DiagnosticError",
			},
		},
	},
}
