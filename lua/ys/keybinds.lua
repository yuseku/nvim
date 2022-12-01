local function map(mode, key, value)
  vim.keymap.set(mode, key, value, { silent = true })
end

-- general keymaps

map('n', '<leader>nh', ':nohl<CR>')

map('n', 'x', '_x')

map('n', '<leader>sv', '<C-w>v') -- split window vertically
map('n', '<leader>sh', '<C-w>s') -- split window horizontally
map('n', '<leader>se', '<C-w>=') -- make splut windows equal width
map('n', '<leader>sx', ':close<CR>') -- close current split window

map('n', '<leader>to', ':tabnew<CR>') -- open new tab
map('n', '<leader>tx', ':tabclose<CR>') -- close current tab
map('n', '<leader>tn', ':tabn<CR>') -- go to next tab
map('n', '<leader>tp', ':tabp<CR>') -- go to previous tab

map("n", "<leader>ca", ":%y<CR>") -- yank all lines
map("n", "<leader>cap", "gg<S-v><S-g>p")

-- plugin keymaps

-- vim-maximizer
map('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map("n", "<leader>np", ":NvimTreeResize +10<CR>")
map("n", "<leader>nm", ":NvimTreeResize -10<CR>")

-- telescope
local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files{ path_display = { "truncate" } })
map("n", "<leader>ff", "<cmd>Telescope find_files no_ignore=true<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep no_ignore=true<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string no_ignore=true<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

map("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- telescope git commands (not on youtube nvim video)
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- diffview.nvim
-- map("n", "<leader>gdo", ":DiffviewOpen<CR>") -- git show differents
-- map("n", "<leader>gdc", ":DiffviewClose<CR>") -- git show differents

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

map("n", "<Leader>q", ":Bdelete<CR>")
