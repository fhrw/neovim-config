vim.g.mapleader = " "

--stock useful stuff
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>so", vim.cmd.so)
vim.keymap.set("n", "<leader>w", function()
    vim.lsp.buf.format()
    vim.cmd.w()
end)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("i", "jk", "<Esc>")

-- disable multiple windows
vim.keymap.set("n", "<C-w>", "")

--windows (disabled for now)
-- vim.keymap.set("n", "sv", function()
--     vim.cmd.vsp()
--     vim.cmd.wincmd("l")
-- end)
-- vim.keymap.set("n", "sh", function()
--     vim.cmd.sp()
--     vim.cmd.wincmd("j")
-- end)

vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action)

vim.keymap.set("n", "<tab>", vim.cmd.bn)
vim.keymap.set("n", "<S-tab>", vim.cmd.bp)
