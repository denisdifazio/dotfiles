local pick = nil

pick = function()
	return vim.cmd("Telescope projects")
end

return {
	{
		"ahmedkhalf/project.nvim",
		event = "VeryLazy",
		opts = {
			manual_mode = true,
		},
		config = function(_, opts)
			require("project_nvim").setup(opts)
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		optional = true,
		keys = {
			{ "<leader>fp", pick, desc = "Projects" },
		},
	},
}
