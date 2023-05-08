

vim.g.coc_node_path = '/home/frank/.nvm/versions/node/v16.14.2/bin/node'
vim.o.encoding = 'utf-8'
vim.o.compatible = false
vim.o.spelllang = 'en_us'
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.updatetime = 100
vim.opt.shortmess:append('c')
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.wrap = true
vim.opt.showmatch = true
vim.opt.linebreak = true

--vim.opt.scrolljump = 5
vim.opt.scrolloff = 3
vim.opt.signcolumn = 'yes'
vim.opt.cmdheight = 1
vim.opt.foldenable = true
vim.opt.foldmethod = 'manual'
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.list = false
vim.opt.listchars:append({ tab = '▶\\', trail = '.', space = '.', eol = '↴' })
vim.opt.path:append('**')
vim.opt.linespace = 5

vim.opt.ruler = true
vim.opt.rulerformat = '%15(%c%V\\ %p%%%)'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.sw = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.laststatus = 2
vim.opt.showtabline = 4
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.completeopt = {'menuone,noinsert,noselect'}
--vim.opt.wildmode = {'longest', 'list', 'full'}
vim.opt.lazyredraw = true

vim.opt.sidescrolloff = 8
vim.opt.title = true
