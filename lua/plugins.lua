
vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use({ "catppuccin/nvim", as = "catppuccin" })
    use "rebelot/kanagawa.nvim"
    use ({ "rose-pine/neovim", as = "rose-pine" })
    use { "scottmckendry/cyberdream.nvim" }

     -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

     -- Lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = ':MasonUpdate',
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},     -- Required
            {'rafamadriz/friendly-snippets'},

        },

    }

     -- Lsp colors
    use 'folke/lsp-colors.nvim'

    -- Autosave
    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
            }
        end,
    })

    -- Autopairs
    use 'jiangmiao/auto-pairs'

    -- Indent blank line
    use 'lukas-reineke/indent-blankline.nvim'

    -- Emmet
    use 'mattn/emmet-vim'

     -- Dashboard
    use 'mhinz/vim-startify'

     -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Smooth scroll
    use 'yuttie/comfortable-motion.vim'
    use 'karb94/neoscroll.nvim'

    -- Nvim tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    -- Color Picker
    use 'KabbAmine/vCoolor.vim'

    -- Integrate Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- FZF
    -- use 'junegunn/fzf'
    -- use 'junegunn/fzf.vim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Vim Flaterm
    use 'voldikss/vim-floaterm'

    -- Lua line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- NerdComment
    use 'preservim/nerdcommenter'

    -- Mini Surround
    use { 'echasnovski/mini.surround', branch = 'stable' }

    -- Multicursors
    use 'mg979/vim-visual-multi'

    -- Todo comments
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Bookmarks
    use 'MattesGroeger/vim-bookmarks'

    -- Tmux-navigator
    use 'christoomey/vim-tmux-navigator'


        -- Git related plugins
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'


    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    use 'lewis6991/gitsigns.nvim'

    -- Gisth | giDCommenterNested
    use 'rudylee/nvim-gist'




    -- Load config depend on current directory
    use 'windwp/nvim-projectconfig'

--     -- Sintax JavaScript
--     use 'pangloss/vim-javascript'
--
--     -- React Sintax
--     use 'neoclide/vim-jsx-improve'
--
--     -- Snippets to javascript
--     --use 'SirVer/ultisnips'
--     --use 'mlaursen/vim-react-snippets'
--
--     use 'joukevandermaas/vim-ember-hbs'
--

end)
