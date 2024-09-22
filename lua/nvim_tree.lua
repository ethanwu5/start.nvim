-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	enable = false,
	hijack_cursor = true,
	-- TODO
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = false,
	},
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
		centralize_selection = true,
		-- float = {
		-- 	enable = true,
		-- },
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
