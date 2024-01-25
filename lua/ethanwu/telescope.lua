-- plugins/telescope.lua:
-- https://github.com/adibhanna/nvim/blob/main/lua/plugins/telescope.lua 配置参考  
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		lazy = false,
		keys = {
			{ "<leader><leader>", "<cmd> Telescope frecency workspace=CWD <cr>", desc = "Cmdline" },
			-- { ":", "<cmd>Telescope cmdline<cr>", desc = "Cmdline" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-frecency.nvim",
			{
				"ahmedkhalf/project.nvim",
				-- "jonarrien/telescope-cmdline.nvim",
				--   搜索频率
				config = function()
					require("project_nvim").setup({})
				end,
			},
		},
		opts = function()
			return {
				defaults = {
					layout_config = {
						vertical = { width = 0.5 },
						-- other layout configuration here
					},
				},
				pickers = {
					find_files = {
						-- theme = "cursor", --dropdown,ivy,cursor
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							previewer = false,
							initial_mode = "normal",
							sorting_strategy = "ascending",
							layout_strategy = "horizontal",
							layout_config = {
								horizontal = {
									width = 0.5,
									height = 0.4,
									preview_width = 0.6,
								},
							},
						}),
					},
					frecency = {
						default_workspace = "CWD",
						show_scores = true,
						show_unindexed = true,
						disable_devicons = false,
						ignore_patterns = {
							"*.git/*",
							"*/tmp/*",
							"*/lua-language-server/*",
						},
					},
				},
			}
		end,
		config = function(_, opts)
			telescope = require("telescope")
			telescope.load_extension("harpoon")
			telescope.load_extension("projects")
			telescope.load_extension("frecency")
			telescope.load_extension("ui-select")
			telescope.setup(opts)
		end,
	},
}
