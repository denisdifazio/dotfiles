return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      eslint = {
        settings = {
          -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
          workingDirectories = { mode = "auto" },
          useFlatConfig = false,
          experimental = {
            -- allows to use flat config format
            useFlatConfig = nil,
          },
        },
      },
    },
  },
}
