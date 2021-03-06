local utils = require('utils')
local backupdir = vim.fn.expand('~/.config/nvim/backup//')
local swapdir = vim.fn.expand('~/.config/nvim/swap//')

utils.opt({'o', 'b'}, 'expandtab', true)
utils.opt({'o', 'b'}, 'smartindent', true)
utils.opt({'o', 'b'}, 'textwidth', 100)
utils.opt({'o', 'w'}, 'number', true)
utils.opt({'o', 'w'}, 'relativenumber', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('w', 'wrap', false)
utils.opt('o', 'formatoptions', 'cro')
utils.opt('o', 'backupdir', backupdir) -- keep backup files out of the way (ie. if 'backup' is ever set)
--utils.opt('o', 'backupdir', vim.opt.backupdir + '.')
utils.opt('o', 'directory', swapdir)   -- keep swap files out of the way
-- utils.opt('o', 'directory', vim.opt.directory + '.')
vim.opt.clipboard:append("unnamedplus")

