return {
	{
		"christoomey/vim-tmux-navigator",
		enabled = true,
		event = "VeryLazy",
		-- NOTE: These keybinds the defaults for vim-tmux-navigator.
		-- They are set here to override LazyVim defaults.
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},
}
