return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palettes = {
				nightfox = {
					-- bg1 = "#131a24",
					bg1 = "#0d1011",
					bg0 = "#151a1c",
				},
			}
			local specs = {
				all = {
					syntax = {
						-- bracket     = spec.fg2,           -- Brackets and Punctuation
						builtin0 = "#f6c177", -- Builtin variable
						-- builtin1 = pal.cyan.bright, -- Builtin type
						-- builtin2 = pal.orange.bright, -- Builtin const
						-- builtin3 = pal.red.bright, -- Not used
						-- comment = pal.comment, -- Comment
						-- conditional = pal.magenta.bright, -- Conditional and loop
						-- const = pal.orange.bright, -- Constants, imports and booleans
						-- dep = spec.fg3, -- Deprecated
						field = "#599bf2", -- Field
						-- func = pal.blue.bright, -- Functions and Titles
						ident = "#8ebfff", -- Identifiers
						-- keyword = pal.magenta.base, -- Keywords
						-- number = pal.orange.base, -- Numbers
						-- operator = spec.fg2, -- Operators
						-- preproc = pal.pink.bright, -- PreProc
						-- regex = pal.yellow.bright, -- Regex
						-- statement = pal.magenta.base, -- Statements
						string = "#59C9A5", -- Strings
						type = "#f6c177", -- Types
						variable = "#8ebfff", -- Variables
					},
				},
			}
			require("nightfox").setup({ palettes = palettes, specs = specs })
			vim.cmd.colorscheme("nightfox")
		end,
	},
}
