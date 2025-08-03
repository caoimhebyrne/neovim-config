vim.g.mapleader = " "
vim.opt.background = "dark"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float)
vim.keymap.set("n", "F", vim.lsp.buf.format)
