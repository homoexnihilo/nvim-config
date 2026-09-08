vim.wo.number = true
-- enable mouse control
vim.g.mouse = 'a'
vim.opt.encoding="utf-8"
-- disable the swap file
vim.opt.swapfile = false
 
-- set tab and indentation options
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
 
vim.opt.fileformat = "unix"

vim.keymap.set("n", "<C-d>", "<C-d>zz", {
  desc = "Half page down and center cursor",
})

vim.keymap.set("n", "<C-u>", "<C-u>zz", {
  desc = "Half page up and center cursor",
})

-- relative numbering
vim.opt.relativenumber = true
