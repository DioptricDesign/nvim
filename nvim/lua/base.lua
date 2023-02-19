vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding= 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent= true
vim.opt.hlsearch= true
vim.opt.backup= false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop= 2
vim.opt.ai = true --auto indent
vim.opt.si = true --smart indent
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append {'**'}
vim.opt.wildignore:append {'*/node_modules/*'}

--share clipboard with system
vim.api.nvim_set_option("clipboard","unnamed")


