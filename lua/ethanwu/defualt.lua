local M = {
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		keys = {
			{ "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "nvim-tree" },
		},
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim_tree")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		opts = {
			theme = "slanted-gaps",
			section_separators = "",
			component_separators = "",
			disabled_filetypes = { "NvimTree" },
			sections = {
				lualine_a = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = { "encoding" },
				lualine_y = { "progress" },
				lualine_z = { "branch" },
			},
		},

		lazy = false,
		config = function(_, opts)
			require("lualine").setup(opts)
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function(_, opts)
			telescope = require("telescope")
			telescope.load_extension("harpoon")
			telescope.setup(opts)
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("plugins.kanagawa")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},

	"rafamadriz/friendly-snippets",
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			-- lsp  配置
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			-- buffer 配置
			"hrsh7th/cmp-buffer",
			-- path  路径配置，命令行路径提示
			"hrsh7th/cmp-path",

			"hrsh7th/cmp-cmdline",
			-- lua 代码提示
			"hrsh7th/cmp-nvim-lua",
			-- lua 代码片段
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			return require("plugins.cmp")
		end,
	},

	-- mason
	{
		"williamboman/mason.nvim",
		config = function()
			require("plugins.mason")
		end,
	},
	"williamboman/mason-lspconfig.nvim",
	{
		"mhartington/formatter.nvim",
		config = function()
			local augroup = vim.api.nvim_create_augroup
			local autocmd = vim.api.nvim_create_autocmd
			augroup("__formatter__", { clear = true })
			autocmd("BufWritePost", {
				group = "__formatter__",
				command = ":FormatWrite",
			})

			require("plugins.format")
		end,
	},
	-- comment https://github.com/numToStr/Comment.nvim
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},

	{
		-- Theme inspired by Atom
		"navarasu/onedark.nvim",
		priority = 1000,
		-- config = function()
		-- vim.cmd.colorscheme("onedark")
		-- end,
	},
	-- harpoon
	"nvim-lua/plenary.nvim",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("plugins.harpoon")
		end,
	},
	{
		-- https://github.com/szw/vim-maximizer
		"szw/vim-maximizer",
		event = "VeryLazy",
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"projekt0n/github-nvim-theme",
	{ "marko-cerovac/material.nvim" },
	{ "shaunsingh/nord.nvim" },
	{ "Mofiqul/vscode.nvim" },
	{
		-- https://github.com/windwp/nvim-autopairs 自动[],{},()
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"neovim/nvim-lspconfig",
		root = { ".git", "go.mod" },
		config = function()
			require("plugins.lspconfig")
		end,
	},
	-- amongst your other plugins
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		-- https://github.com/f-person/git-blame.nvim
		"f-person/git-blame.nvim",
		event = "VeryLazy",
		keys = {
			{ "<leader>gt", "<cmd>GitBlameToggle<cr>", desc = "git blame toggle" },
		},
		opts = {
			enabled = false, -- disable by default, enabled only on keymap
			date_format = "%m/%d/%y %H:%M:%S", -- more concise date format
		},
	},
	{ "xiyaowong/transparent.nvim" },
}
return M
