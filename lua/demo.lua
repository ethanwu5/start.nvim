local a = vim.api.nvim_get_current_buf()
print(a)

if true then
	print("this is my condition")
end

if true then
	print("hello world")
end

vim.o.shortmess = vim.o.shortmess .. "I"

vim.g.hello2 = "guangkuowuhello"

vim.cmd("set nu!")

function hello()
	print("this is my lua function")
end

hello()
