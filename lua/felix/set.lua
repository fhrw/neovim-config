vim.cmd("set background=light")
vim.cmd("colorscheme PaperColorSlim")
vim.opt.cursorline            = true
vim.opt.termguicolors         = true
vim.opt.title                 = true
vim.opt.autoindent            = true
vim.opt.smartindent           = true
vim.opt.hlsearch              = true
vim.opt.backup                = false
vim.opt.showcmd               = true
vim.opt.cmdheight             = 1
vim.opt.laststatus            = 2
vim.opt.expandtab             = true
vim.opt.scrolloff             = 10
vim.opt.shell                 = "fish"
vim.opt.backupskip            = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand            = "split"
vim.opt.ignorecase            = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab              = true
vim.opt.breakindent           = true
vim.opt.wrap                  = false -- No Wrap lines
vim.o.number                  = true
vim.o.relativenumber          = true
vim.opt.wildmenu              = true
vim.opt.ruler                 = true
vim.opt.confirm               = true                                 -- instead of failing a command because of unsaved changes, raise a dialog asking if you wish to save changed files.
vim.opt.undofile              = true                                 -- maintain undo history between sessions
vim.opt.undodir               = '/Users/felix/.config/nvim/undodir/' -- store undofiles in single directory
vim.opt.swapfile              = false                                -- disable swapfiles
vim.opt.showcmd               = true                                 -- show command in bottom bar
vim.opt.incsearch             = true                                 -- search as characters are entered

vim.g.loaded_ruby_provider    = 0
vim.g.loaded_perl_provider    = 0
vim.g.loaded_python3_provider = 0

-- indentation settings for using 4 spaces instead of tabs.
-- do not change 'tabstop' from its default value of 8 with this setup.
vim.opt.shiftwidth            = 4
vim.opt.softtabstop           = 4
vim.opt.expandtab             = true

-- use filetype-based syntax highlighting, ftplugins, and indentation
vim.cmd([[
syntax enable
filetype plugin indent on
]])
