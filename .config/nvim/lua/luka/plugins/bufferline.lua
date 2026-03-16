return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			offsets = {
				{
					filetype = "NvimTree",
					text = "􀈖  File Explorer",
					highlight = "Directory",
					separator = false, -- use a "true" to enable the default, or set your own character
				},
			},
		},
		highlights = {
			indicator_selected = { fg = "#0A84FF" },
		},
	},
}
