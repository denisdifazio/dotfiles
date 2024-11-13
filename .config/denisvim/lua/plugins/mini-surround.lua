return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.surround").setup({
			mappings = {
				add = "ys", -- Add surrounding in Normal and Visual modes
				delete = "ds", -- Delete surrounding
				find = "", -- Find surrounding (to the right)
				find_left = "", -- Find surrounding (to the left)
				highlight = "", -- Highlight surrounding
				replace = "cs", -- Replace surrounding
				update_n_lines = "", -- Update `n_lines`
			},
		})
	end,
}
