return {
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
			return require("ethanwu.cmp.init")
		end,
	},
}
