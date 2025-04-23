vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- REMAPS
vim.cmd("map <C-h> <C-w>h")
vim.cmd("map <C-j> <C-w>j")
vim.cmd("map <C-k> <C-w>k")
vim.cmd("map <C-l> <C-w>l")

vim.cmd("nmap op o<Esc>k")
vim.cmd("nmap oi o<Esc>j")

vim.opt.relativenumber = true
vim.opt.number = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  serverity_sort = true,
})
