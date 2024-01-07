-- plugins/telescope.lua:
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"ahmedkhalf/project.nvim",
				config = function()
					require("project_nvim").setup({})
				end,
			},
		},
		config = function(_, opts)
			telescope = require("telescope")
			telescope.load_extension("harpoon")
			telescope.load_extension("projects")
			telescope.setup(opts)
		end,
	},
}
