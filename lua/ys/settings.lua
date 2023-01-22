local g = vim.g
local opt = vim.opt

-- number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- opt.autoindent = true
opt.smartindent = true

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
opt.colorcolumn = "120"

-- remove thin cursor in insert mode
opt.guicursor = ""

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard 
opt.clipboard:append('unnamedplus')

-- split windows
opt.splitright = true
opt.splitbelow = true

-- other
opt.iskeyword:append('-')
opt.isfname:append('@-@')
opt.title = true

opt.updatetime = 50

opt.hlsearch = false
opt.incsearch = true

-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE") -- remove background
-- vim.cmd('let g:dracula_colorterm = 0')

-- indentation by file type
local function indentationByFile(fileType, indentationWidth)
vim.api.nvim_create_autocmd("FileType", {
	pattern = fileType,
	callback = function()
		vim.opt_local.shiftwidth = indentationWidth
		vim.opt_local.tabstop = indentationWidth
	end
})
end

indentationByFile("php", 4)
indentationByFile("phtml", 4)
indentationByFile("xml", 4)

-- map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
