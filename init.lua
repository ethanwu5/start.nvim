vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("vim_opt")

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local lazy_opts = {
	install = {
		-- install missing plugins on startup. This doesn't increase startup time.
		missing = true,
		-- try to load one of these colorschemes when starting an installation during startup
		colorscheme = { "habamax" },
	},
	ui = {
		border = "rounded",
		title = "lazy.nvim",
		title_pos = "center",
	},
}
-- require("lazy").setup(require("plugins"), lazy_opts)
require("lazy").setup("ethanwu")

require("map")
require("vim_opt")
