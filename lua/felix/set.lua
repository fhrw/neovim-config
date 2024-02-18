vim.opt.termguicolors = true
vim.cmd("colorscheme zenwritten")
vim.opt.cursorline            = true
vim.opt.title                 = true
vim.opt.autoindent            = true
vim.opt.smartindent           = true
vim.opt.hlsearch              = false
vim.opt.backup                = false
vim.opt.cmdheight             = 1
vim.opt.laststatus            = 3
vim.opt.expandtab             = true
vim.opt.scrolloff             = 10
vim.opt.shell                 = "fish"
vim.opt.backupskip            = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand            = "split"
vim.opt.ignorecase            = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab              = true
vim.opt.breakindent           = true
vim.opt.wrap                  = false -- No Wrap lines
-- vim.o.number                  = true
-- vim.opt.relativenumber        = true
-- vim.opt.numberwidth           = 1
vim.opt.wildmenu              = true
vim.opt.ruler                 = true
vim.opt.signcolumn            = "no"
vim.opt.confirm               = true                                 -- instead of failing a command because of unsaved changes, raise a dialog asking if you wish to save changed files.
vim.opt.undofile              = true                                 -- maintain undo history between sessions
vim.opt.undodir               = '/Users/felix/.config/nvim/undodir/' -- store undofiles in single directory
vim.opt.swapfile              = false                                -- disable swapfiles
vim.opt.showcmd               = true                                 -- show command in bottom bar
vim.opt.incsearch             = true                                 -- search as characters are entered
-- vim.opt.colorcolumn           = "80"

vim.g.loaded_ruby_provider    = 0
vim.g.loaded_perl_provider    = 0
vim.g.loaded_python3_provider = 0

-- indentation settings for using 4 spaces instead of tabs.
-- do not change 'tabstop' from its default value of 8 with this setup.
vim.opt.shiftwidth            = 8
vim.opt.softtabstop           = 8
vim.opt.expandtab             = true

-- use filetype-based syntax highlighting, ftplugins, and indentation
vim.cmd([[
syntax enable
filetype plugin indent on
]])
