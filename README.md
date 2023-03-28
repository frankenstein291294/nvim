# Neovim configuration
## Personal configuration Neovim
### Directories TREE
```
├── coc-settings.json
├── init.lua
├── lua
│   ├── keymappings.lua
│   ├── plugins
│   │   ├── autosave.lua
│   │   ├── bookmarks.lua
│   │   ├── coc.lua
│   │   ├── coc-snippets.lua
│   │   ├── codi-conf.lua
│   │   ├── colorizer.lua
│   │   ├── dashboard.lua
│   │   ├── emmet.lua
│   │   ├── git-nvim.lua
│   │   ├── indent-blankline.lua
│   │   ├── lualine.lua
│   │   ├── neoscroll.lua
│   │   ├── nerdcommenter.lua
│   │   ├── nerdtree.lua
│   │   ├── newpaper.lua
│   │   ├── ranger.lua
│   │   ├── self-statusline.lua
│   │   ├── self-tabline.lua
│   │   ├── sessions.lua
│   │   ├── themes.lua
│   │   ├── vim-dadbod-ui.lua
│   │   └── vim-startify.lua
│   ├── plugins.lua
│   └── settings.lua
└── README.md
```
### Plugins

* ##### packer | management packer for neovim - lua based
  ```
  use 'wbthomason/packer.nvim'
  ```

* ##### Themes
  ```
  use {'dracula/vim', as = 'dracula'}
  use 'tomasr/molokai'
  use 'rakr/vim-one'
  use 'ayu-theme/ayu-vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'morhetz/gruvbox'
  use "yorik1984/newpaper.nvim"
  ```

* ##### LuaLine
  ```
  use {
    'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  ```

* ##### Databases management
  ```
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
  ```

* ##### Tmux navigator | Navigation between panels
  ```
  use 'christoomey/vim-tmux-navigator'
  ```

* ##### Icons
  ```
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  ```

* ##### Plugins to IDE |
  * ###### FZF | fuzzy finder
    ```
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    ```

  * ###### NerdTree
    ```
    use 'scrooloose/nerdtree'
    ```

  * ###### Ranger
    ```
    use 'kevinhwang91/rnvimr'
    ```

  * ###### Dashboard
    ```
    use 'itchyny/vim-gitbranch'
    use 'mhinz/vim-startify'
    ```

  * ###### Git
    ```
    use {
      'dinhhuy258/git.nvim'
    }
    use 'tpope/vim-fugitive'
    ```

  * ###### Git | Gisth
    ```
    use 'rudylee/nvim-gist'
    ```

  * ###### Bookmarks
    ```
    use 'MattesGroeger/vim-bookmarks'
    ```

  * ###### Load config depending of current dir
    ```
    use 'windwp/nvim-projectconfig'
    ```

  * ###### Autofilename
    ```
    use 'boundincode/autofilename'
    ```

  * ###### NerdComment
    ```
    use 'preservim/nerdcommenter'
    ```

  * ###### Multicursors
    ```
    use 'mg979/vim-visual-multi'
    ```

  * ###### Color Picker
    ```
    use 'KabbAmine/vCoolor.vim'
    ```

  * ###### Autosave
    ```
    use({
      "Pocco81/auto-save.nvim",
      config = function()
      require("auto-save").setup {
      }
      end,
    })
    ```

  * ###### Colorizer
    ```
    use 'norcalli/nvim-colorizer.lua'
    ```

  * ###### Smooth scroll
    ```
    use 'karb94/neoscroll.nvim'
    ```

  * ###### Indent blank line
    ```
    use 'lukas-reineke/indent-blankline.nvim'
    ```

* ##### SYNTAX
  * ###### COC | Conquer of completion
    ```
    use 'neoclide/coc.nvim'
    ```

  * ###### Autopairs
    ```
    use 'jiangmiao/auto-pairs'
    ```

  * ###### Emmet
    ```
    use 'mattn/emmet-vim'
    ```

  * ###### JavaScript Syntax
    ```
    use 'pangloss/vim-javascript'
    ```

  * ###### Auto Console log // disable
    ```
    -- use 'metakirby5/codi.vim'
    ```

* ##### Ide flutter
  * ###### Flutter and dart
    ```
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'natebosch/vim-lsc'
    use 'natebosch/vim-lsc-dart'
    ```

