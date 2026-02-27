return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({ lightbulb = { enable = false } })

		local keymap = vim.keymap

		keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definiton" })
		keymap.set("n", "<leader>pD", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek Type Definition" })
	end,
}
