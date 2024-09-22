api = vim.api

-- api.nvim_set_keymap("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", {noremap = true, silent = false})

local opts = { noremap = true, silent = false }
api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

-- move zz
api.nvim_set_keymap("n", "n", "nzz", opts)
api.nvim_set_keymap("n", "N", "Nzz", opts)
api.nvim_set_keymap("n", "*", "*zz", opts)
api.nvim_set_keymap("n", "{", "{zz", opts)
api.nvim_set_keymap("n", "}", "{zz", opts)
-- 退出
api.nvim_set_keymap("n", "<Leader>qq", "<cmd>qa!<cr>", opts)

-- 清除选中高亮
api.nvim_set_keymap("n", "<ESC>", "<cmd>nohl<CR>", opts)

-- telescope
api.nvim_set_keymap("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", {})
api.nvim_set_keymap("n", "<Leader>fw", "<cmd>Telescope live_grep<CR>", {})
api.nvim_set_keymap("n", "<Leader>fz", "<cmd>Telescope buffers<cr>", {})
api.nvim_set_keymap("n", "<Leader>fh", "<cmd>Telescope help_tags<cr>", {})
api.nvim_set_keymap("n", "<Leader>fo", "<cmd>Telescope harpoon marks<cr>", {})
api.nvim_set_keymap("n", "<Leader>fj", "<cmd>Telescope  jumplist<cr>", {})

-- lsp
api.nvim_set_keymap("n", "<Leader>lr", "<cmd>Telescope lsp_references <cr>", {})

-- source file
api.nvim_set_keymap("n", "<Leader>so", "<cmd>source  %<cr>", {})

-- max window
api.nvim_set_keymap("n", "<Leader>ma", "<cmd>MaximizerToggle!<cr>", {})

api.nvim_set_keymap("n", "<leader>lp", "<cmd>Telescope projects<CR>", opts)
