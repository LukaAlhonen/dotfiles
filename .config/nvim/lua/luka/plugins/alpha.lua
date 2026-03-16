return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Greeter colors
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#599bf2", bold = true }) -- blue header
		vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#e0af68", bold = true }) -- yellow command
		vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#ffffff" }) -- white description
		vim.api.nvim_set_hl(0, "AlphaIcon", { fg = "#61afef" }) -- blue icon

		-- Set header
		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}
		dashboard.section.header.opts.hl = "AlphaHeader"
		local function icon_button(sc, icon, text, cmd)
			local label = icon .. " > " .. text
			local btn = dashboard.button(sc, label, cmd)

			btn.opts.hl = {
				{ "AlphaIcon", 0, #icon + 1 },
				{ "AlphaButtons", #icon + 1, -1 },
			}
			btn.opts.hl_shortcut = "AlphaShortcut"

			return btn
		end
		-- Set menu
		dashboard.section.buttons.val = {
			icon_button("e", "􀈸 ", "New File", "<cmd>ene<CR>"),
			icon_button("SPC ee", "􀈖 ", "File explorer", "<cmd>NvimTreeToggle<CR>"),
			icon_button("SPC ff", "􀕹 ", "Find File", "<cmd>Telescope find_files<CR>"),
			icon_button("SPC fs", "􀊫 ", "Find Word", "<cmd>Telescope live_grep<CR>"),
			icon_button("SPC wr", "􀅉 ", "Restore Session", "<cmd>SessionRestore<CR>"),
			icon_button("q", "􀀳 ", "Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
