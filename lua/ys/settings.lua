local g = vim.g
local opt = vim.opt

-- number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false 

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apperance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard 
opt.clipboard:append('unnamedplus') 

-- split windows
opt.splitright = true
opt.splitbelow = true

-- other
opt.iskeyword:append('-')
opt.title = true

-- vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
vim.cmd("hi Normal guibg=NONE ctermbg=NONE") -- remove background
-- vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE") -- remove background
-- vim.cmd('let g:tokyonight_transparent = 1')
vim.cmd('let g:dracula_colorterm = 0')

-- map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
