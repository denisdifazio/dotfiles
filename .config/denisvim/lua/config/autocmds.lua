-- Send current working directory to tmux
vim.api.nvim_create_autocmd("DirChanged", {
	pattern = "*",
	command = 'call chansend(v:stderr, printf("\\033]7;%s\\033", v:event.cwd))',
})

-- Unset current working directory when leaving vim
vim.api.nvim_create_autocmd("VimLeave", {
	pattern = "*",
	command = 'call chansend(v:stderr, "\\033]7;\\033")',
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})
