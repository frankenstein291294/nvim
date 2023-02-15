vim.cmd([[

  set encoding=utf8
  set nocompatible
  set spelllang=en_us
  filetype plugin indent on
  syntax enable

  set nobackup
  set noswapfile
  set nowritebackup
  set updatetime=100
  set shortmess+=c
  set clipboard+=unnamedplus
  set mouse=a 
  set number
  set relativenumber
  set numberwidth=4
  set wrap
  set showmatch
  set linebreak

  "set scrolljump=5
  set scrolloff=3
  set signcolumn=yes
  set cmdheight=1
  set foldenable
  set foldmethod=manual
  set splitbelow
  set splitright

  "set list
  set listchars=tab:▶\
  set listchars+=trail:.
  set listchars+=space:.
  set listchars+=eol:↴
  set path+=**
  set linespace=5

  set wildmode=longest,list,full
  set ruler
  set rulerformat=%15(%c%V\ %p%%%)
  set ignorecase
  set smartcase
  set incsearch
  set autoindent
  set smartindent
  set expandtab
  set smarttab
  set sw=2
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set laststatus=2
  set showtabline=2
  set noshowmode
  set hidden
  set completeopt=menuone,noinsert,noselect
  set lazyredraw
  set guioptions+=a
  set guifont="monospace:h17"
  set sidescrolloff=8
  set title

]])
