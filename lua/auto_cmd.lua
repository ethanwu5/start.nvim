vim.api.nvim_create_autocmd("SessionLoadPost", {
	callback = function()
		vim.cmd("Neotree reveal")
	end,
})
