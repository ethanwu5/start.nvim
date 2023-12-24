local harpoon = require("harpoon")
-- REQUIRED
harpoon.setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():append()
end)
vim.keymap.set("n", "<leader>hl", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "h1", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "h2", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "h3", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "h4", function()
	harpoon:list():select(4)
end)
