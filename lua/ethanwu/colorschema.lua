return {

	-- tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},
	{
		"rebelot/kanagawa.nvim",
		config = function(opts)
			vim.cmd("colorscheme kanagawa")
		end,
	},

	-- catppuccin
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
	},
	-- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- "projekt0n/github-nvim-theme",
	-- { "marko-cerovac/material.nvim", event = "VeryLazy" },
	-- { "shaunsingh/nord.nvim" },
	{ "Mofiqul/vscode.nvim" },
}
