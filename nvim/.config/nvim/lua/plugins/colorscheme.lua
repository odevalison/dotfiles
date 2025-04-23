return {
	"tiagovla/tokyodark.nvim",
	opts = {},
	config = function(_, opts)
		local tokyodark = require("tokyodark")
		tokyodark.setup(opts)

		vim.cmd([[colorscheme tokyodark]])
	end,
}
