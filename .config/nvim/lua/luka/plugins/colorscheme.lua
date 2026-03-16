return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local blue = "#0A84FF"
			local palettes = {
				nightfox = {
					bg1 = "#0d1011", -- editor
					bg0 = "#151a1c", -- file explorer + bufferline
				},
			}
			local specs = {
				all = {
					syntax = {
						builtin0 = "#f6c177", -- Builtin variable
						field = "#599bf2", -- Field
						ident = "#8ebfff", -- Identifiers
						string = "#59C9A5", -- Strings
						type = "#f6c177", -- Types
						variable = "#8ebfff", -- Variables
					},
				},
			}
			require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })
			vim.cmd.colorscheme("nightfox")
			vim.api.nvim_set_hl(0, "Cursor", { fg = "#ffffff", bg = blue })
			vim.api.nvim_set_hl(0, "CursorInsert", { fg = "#ffffff", bg = blue })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#0A84FF", bold = true })
		end,
	},
}
