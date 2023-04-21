vim.g.mapleader = " "

--stock useful stuff
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "fs", function()
	vim.lsp.buf.format()
	vim.cmd.w()
end)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>so", vim.cmd.so)

--windows
vim.keymap.set("n", "<leader>wo", function()
	vim.cmd.wincmd("o")
end)
vim.keymap.set("n", "sv", function()
	vim.cmd.vsp()
	vim.cmd.wincmd("l")
end)
vim.keymap.set("n", "sh", function()
	vim.cmd.sp()
	vim.cmd.wincmd("j")
end)
