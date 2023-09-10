vim.g.mapleader = " "

-- setting color theme
vim.g.material_style = "deep ocean"
-- darker, lighter, oceanic, palenight, deep ocean

-- disabled netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- move selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- line numbers
vim.opt.nu = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers

-- tabs and spaces
vim.opt.tabstop = 4 -- make a tab count 4 spaces
vim.opt.softtabstop = 4 -- make a tab count 4 spaces while editing
vim.opt.shiftwidth = 4  -- how much to do on intendation
vim.opt.expandtab = true -- use spaces instead of tabs

vim.opt.smartindent = true -- auto indent on new line etc.

vim.opt.wrap = false -- wrap lines

vim.opt.swapfile = false -- dont use a swap file
vim.opt.backup = false -- dont use a backup file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true -- use terminal colors

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.cmdheight = 2  -- more space in the neovim command line for displaying messages

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for completion
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"-- the encoding written to a file
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false                      -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                       -- always show tabs
vim.opt.smartcase = true                      -- smart case
vim.opt.splitbelow = true                     -- force all horizontal splits to go below current window
vim.opt.splitright = true                     -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                      -- creates a swapfile
vim.opt.termguicolors = true                  -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                     -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                       -- enable persistent undo
vim.opt.writebackup = false                   -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time


