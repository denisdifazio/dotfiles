return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts_extend = { "spec" },
	opts = {
		defaults = {},
		spec = {
			{
				mode = { "n", "v" },
				{ "<leader>c", group = "code" },
				{ "<leader>f", group = "file/find" },
				{ "<leader>s", group = "search" },
				{ "<leader>u", group = "ui" },
				{ "<leader>g", group = "git" },
				{ "[", group = "prev" },
				{ "]", group = "next" },
				{ "g", group = "goto" },
				{ "gx", desc = "Open with system app" },
			},
		},
	},
}
