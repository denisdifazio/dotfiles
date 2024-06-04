-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_autocmd("DirChanged", {
  pattern = "*",
  -- send current working directory to tmux
  command = 'call chansend(v:stderr, printf("\\033]7;%s\\033", v:event.cwd))',
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  -- unset current working directory when leaving vim
  command = 'call chansend(v:stderr, "\\033]7;\\033")',
})
