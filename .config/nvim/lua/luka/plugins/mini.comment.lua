return {
	"nvim-mini/mini.comment",
	version = false,
	config = function()
		local comment = require("mini.comment")
		comment.setup()
	end,
}
