-- 剪切板配置
vim.opt.clipboard = "unnamedplus"

local opt = vim.opt

-- Indenting
-- opt.expandtab = true
-- shiftwidth 回车之后的样式
opt.shiftwidth = 2
-- opt.smartindent = true
opt.tabstop = 2
-- opt.softtabstop = 0
-- 左侧的提示栏
opt.signcolumn = "no"

-- cursorline
opt.cursorline = true

-- Search Settings
opt.ignorecase = true
-- OPT
opt.smartcase = true
