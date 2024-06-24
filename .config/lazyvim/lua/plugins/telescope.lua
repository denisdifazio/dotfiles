return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      pickers = {
        live_grep = {
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
      },
    })
  end,
}
