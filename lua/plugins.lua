
-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --[[
    --  THEME
    --]]
    -- Dracula
    use {'dracula/vim', as = 'dracula'}
    use 'tomasr/molokai'
    use 'rakr/vim-one'
    use 'ayu-theme/ayu-vim'
    use 'morhetz/gruvbox'
    use 'sainnhe/gruvbox-material'
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- Lua-line
    --[[ use { ]]
    --[[ 'nvim-lualine/lualine.nvim', ]]
    --[[ requires = { 'kyazdani42/nvim-web-devicons', opt = true } ]]
    --[[ } ]]

    use 'rcarriga/nvim-notify'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Database management
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'

    -- Tmux navigator
    use 'christoomey/vim-tmux-navigator'

    -- Icons
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'


    --[[
    --  IDE CONFIGURATION
    --]]

    -- FZF
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- NerdTree
    use 'scrooloose/nerdtree'

    -- Ranger
    use 'kevinhwang91/rnvimr'

    -- Dashboard
    use 'itchyny/vim-gitbranch'
    use 'mhinz/vim-startify'

    -- Git
    use {
        'dinhhuy258/git.nvim'
    }
    use 'tpope/vim-fugitive'

    -- Gisth | git
    use 'rudylee/nvim-gist'

    -- Vim Flaterm
    use 'voldikss/vim-floaterm'

    --[[ use { ]]
    --[[ 'glepnir/dashboard-nvim', ]]
    --[[ event = 'VimEnter', ]]
    --[[ config = function() ]]
    --[[   require('dashboard').setup { ]]
    --[[     -- config ]]
    --[[   } ]]
    --[[ end, ]]
    --[[ requires = {'nvim-tree/nvim-web-devicons'} ]]
    --[[ } ]]

    -- Bookmarks
    use 'MattesGroeger/vim-bookmarks'

    -- Load config depend on current directory
    use 'windwp/nvim-projectconfig'

    -- AutofileName
    use 'boundincode/autofilename'

    -- NerdComment
    use 'preservim/nerdcommenter'

    -- Multicursors
    use 'mg979/vim-visual-multi'

    -- Color Picker
    use 'KabbAmine/vCoolor.vim'

    -- Autosave
    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
            }
        end,
    })

    -- Integrate Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Smooth scroll
    use 'yuttie/comfortable-motion.vim'
    use 'karb94/neoscroll.nvim'

    -- Indent blank line
    use 'lukas-reineke/indent-blankline.nvim'


    --[[
    --  SYNTAX
    --]]
    -- Conquer of completion
    use 'neoclide/coc.nvim'

    -- Autopairs
    use 'jiangmiao/auto-pairs'

    -- Emmet
    use 'mattn/emmet-vim'

    -- Sintax JavaScript
    use 'pangloss/vim-javascript'

    -- React Sintax
    use 'neoclide/vim-jsx-improve'

    -- Snippets to javascript
    use 'SirVer/ultisnips'
    use 'mlaursen/vim-react-snippets'

    -- use 'metakirby5/codi.vim'
    use 'joukevandermaas/vim-ember-hbs'


    --[[
    --  FLUTTER / DART
    --]]
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'natebosch/vim-lsc'
    use 'natebosch/vim-lsc-dart'

end)
