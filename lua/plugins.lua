
vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use({ "catppuccin/nvim", as = "catppuccin" })
    use "rebelot/kanagawa.nvim"

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

    use 'rcarriga/nvim-notify'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Database management
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'

    -- Tmux-navigator
    use 'christoomey/vim-tmux-navigator'

    -- Icons
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'


    --[[
    --  IDE CONFIGURATION
    --]]
    -- Minimap
    use {
        'gorbit99/codewindow.nvim',
        config = function()
            local codewindow = require('codewindow')
            codewindow.setup()
            codewindow.apply_default_keybinds()
        end,
    }

    -- FZF
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- NerdTree
    -- use 'scrooloose/nerdtree'

    --use {
        --'nvim-tree/nvim-tree.lua',
        --requires = {
            --'nvim-tree/nvim-web-devicons', -- optional
        --},
        --config = function()
            --require("nvim-tree").setup {}
        --end
    --}

    --use {
        --"nvim-neo-tree/neo-tree.nvim",
        --branch = "v3.x",
        --requires = { 
            --"nvim-lua/plenary.nvim",
            --"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            --"MunifTanjim/nui.nvim",
        --}
    --}
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
                config = function()
                    require'window-picker'.setup({
                        autoselect_one = true,
                        include_current = false,
                        filter_rules = {
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                        other_win_hl_color = '#e35e4f',
                    })
                end,
            }
        },
        config = function ()
            -- If you want icons for diagnostic errors, you'll need to define them somewhere:
            vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
            vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
            vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
            vim.fn.sign_define("DiagnosticSignHint",
            {text = "󰌵", texthl = "DiagnosticSignHint"})

            

    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
end
}

    -- Ranger
    use 'kevinhwang91/rnvimr'

    -- Dashboard
    use 'itchyny/vim-gitbranch'
    use 'mhinz/vim-startify'

    -- Git related plugins
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    use 'lewis6991/gitsigns.nvim'

    -- Gisth | giDCommenterNested
    use 'rudylee/nvim-gist'

    -- Vim Flaterm
    use 'voldikss/vim-floaterm'

    -- Bookmarks
    use 'MattesGroeger/vim-bookmarks'

    -- Load config depend on current directory
    use 'windwp/nvim-projectconfig'

    -- NerdComment
    use 'preservim/nerdcommenter'

    -- Comment
    --use 'numToStr/Comment.nvim'

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
    -- Autopairs
    use 'jiangmiao/auto-pairs'

    -- Emmet
    use 'mattn/emmet-vim'

    -- Sintax JavaScript
    use 'pangloss/vim-javascript'

    -- React Sintax
    use 'neoclide/vim-jsx-improve'

    -- Snippets to javascript
    --use 'SirVer/ultisnips'
    --use 'mlaursen/vim-react-snippets'

    use 'joukevandermaas/vim-ember-hbs'


    --[[
    --  FLUTTER / DART
    --]]
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'natebosch/vim-lsc'
    use 'natebosch/vim-lsc-dart'

end)
