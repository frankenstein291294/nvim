# 🚀 Mi Configuración de Neovim

Configuración personal de **Neovim** escrita en **Lua**, usando **[lazy.nvim](https://github.com/folke/lazy.nvim)** como gestor de plugins. Está organizada de forma modular para facilitar su mantenimiento y escalabilidad.

![Neovim](https://img.shields.io/badge/Neovim-0.10+-57A143?logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-5.1-2C2D72?logo=lua&logoColor=white)
![Lazy.nvim](https://img.shields.io/badge/Plugin%20Manager-lazy.nvim-blueviolet)

---

## 📑 Tabla de Contenidos

- [Requisitos](#-requisitos)
- [Estructura del Proyecto](#-estructura-del-proyecto)
- [Archivos Principales](#-archivos-principales)
- [Plugins por Categoría](#-plugins-por-categoría)
- [Plugins No Cargados (Lazy Loading)](#-plugins-no-cargados-lazy-loading)
- [Notas y Recomendaciones](#-notas-y-recomendaciones)

---

## 🧩 Requisitos

- **Neovim** `>= 0.10` (usa `vim.uv` en `lazy.lua`)
- **Git** (para el bootstrap automático de `lazy.nvim`)
- **Ripgrep** (`rg`) — recomendado para `fzf` y búsquedas
- **Nerd Font** — para iconos en `bufferline`, `nvim-tree`, `nvim-web-devicons`, etc.
- **Node.js** — requerido por algunos LSPs instalados vía `mason`
- **tmux** — si quieres aprovechar `vim-tmux-navigator`

---

## 📁 Estructura del Proyecto

```text
.
├── init.lua                     # Punto de entrada: require de módulos en orden
├── lazy-lock.json               # Lockfile de versiones de plugins
├── README.md                    # Documentación del proyecto
└── lua/
    ├── config/
    │   └── lazy.lua             # Bootstrap + setup de lazy.nvim
    ├── core/
    │   ├── autofunctions.lua    # Funciones auxiliares / autocmds
    │   ├── configs.lua          # Opciones globales (vim.opt)
    │   ├── keymaps.lua          # Atajos de teclado globales
    │   ├── lsp.lua              # Config LSP (on_attach, capabilities)
    │   └── theme.lua            # Aplica el colorscheme activo
    └── plugins/
        ├── autopairs.lua        # auto-pairs: cierre automático de pares
        ├── autosave.lua         # auto-save.nvim: guardado automático
        ├── bookmarks.lua        # vim-bookmarks: marcadores persistentes
        ├── bufferline.lua       # bufferline.nvim: barra superior de buffers
        ├── colorpicker.lua      # vCoolor.vim: selector visual de colores
        ├── comment.lua          # Comment.nvim: comentar/descomentar
        ├── emmet-vim.lua        # emmet-vim: expansión HTML/CSS
        ├── flash.lua            # flash.nvim: saltos con etiquetas
        ├── floaterm.lua         # floaterm + volt (lazy: :FloatermToggle)
        ├── fzf-lua.lua          # fzf-lua: fuzzy finder con preview
        ├── gitsigns.lua         # gitsigns.nvim: hunks Git en el gutter
        ├── indent-blankline.lua # indent-blankline: guías de indentación
        ├── lsp/
        │   ├── cmp.lua          # nvim-cmp + fuentes + LuaSnip
        │   └── mason.lua        # mason + mason-lspconfig + lspconfig
        ├── lualine.lua          # lualine.nvim: statusline inferior
        ├── markdown-preview.lua # markdown-preview (lazy: :MarkdownPreview)
        ├── mini-surround.lua    # mini.surround: añadir/editar surrounds
        ├── multicursors.lua     # vim-visual-multi: múltiples cursores
        ├── neoscroll.lua        # neoscroll: scroll suave/animado
        ├── noice_notify.lua     # noice + nvim-notify: UI cmdline/notifs
        ├── nvim-colorizer.lua   # nvim-colorizer: resalta códigos de color
        ├── nvim-tree.lua        # nvim-tree: explorador de archivos
        ├── startify.lua         # vim-startify: pantalla de inicio
        ├── themes/
        │   ├── capptuccin.lua   # catppuccin
        │   ├── kanagawa.lua     # kanagawa
        │   └── onedark.lua      # onedarkpro
        ├── tmux-navigator.lua   # vim-tmux-navigator: navegar Nvim/tmux
        ├── todo-comments.lua    # todo-comments: TODO/FIXME/NOTE
        ├── toggleterm.lua       # toggleterm: terminales flotantes/split
        ├── treesitter.lua       # nvim-treesitter: parsing/resaltado
        ├── which-key.lua        # which-key: popup de keymaps
        └── windwp.lua           # 
```

---

## 🛠️ Archivos Principales

### `init.lua`

Punto de entrada. Carga los módulos en el orden correcto:

| Orden | Módulo                     | Propósito                              |
|-------|----------------------------|----------------------------------------|
| 1     | `core.configs`             | Opciones globales (`vim.opt`)          |
| 2     | `core.keymaps`             | Atajos de teclado globales             |
| 3     | `core.autofunctions`       | Funciones auxiliares / autocmds        |
| 4     | `config.lazy`              | Inicializa `lazy.nvim` con los specs   |
| 5     | `core.theme`               | Aplica el colorscheme seleccionado     |
| 6     | `core.lsp`                 | Configuración LSP a bajo nivel         |

### `lua/config/lazy.lua`

- **Bootstrap** automático: si `lazy.nvim` no está instalado, lo clona desde GitHub.
- **Specs** importados:
  - `plugins` (raíz)
  - `plugins/lsp`
  - `plugins/themes`
- **Opciones destacadas**:
  - `install.colorscheme = "habamax"` — tema temporal durante instalaciones.
  - `checker.enabled = false` — no busca actualizaciones automáticamente.
  - `change_detection.enable = true` — detecta cambios en specs al vuelo.

---

## 🎯 Plugins por Categoría

> Total: **41 plugins** (38 cargados + 3 en lazy-load).

### ⚙️ Gestor de Plugins

| Plugin | Descripción |
|--------|-------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Gestor de plugins moderno con lazy-loading y UI. |

---

### 🎨 Temas / Colorschemes

| Plugin | Archivo | Descripción |
|--------|---------|-------------|
| [catppuccin](https://github.com/catppuccin/nvim) | `themes/capptuccin.lua` | Tema suave con múltiples flavors. |
| [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) | `themes/kanagawa.lua` | Inspirado en pinturas japonesas. |
| [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim) | `themes/onedark.lua` | Variante moderna del clásico One Dark. |

> El tema activo se selecciona en `core/theme.lua`.

---

### 🧠 LSP, Autocompletado & Snippets

| Plugin | Descripción |
|--------|-------------|
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Instalador de LSPs, DAPs y linters. |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Puente entre Mason y `lspconfig`. |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuraciones base para servidores LSP. |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Motor de autocompletado. |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Fuente: buffers abiertos. |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | Fuente: LSP. |
| [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua) | Fuente: API de Neovim. |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Fuente: rutas del sistema. |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Fuente: snippets de LuaSnip. |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Motor de snippets. |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Colección de snippets predefinidos. |

Archivos: `plugins/lsp/mason.lua` y `plugins/lsp/cmp.lua`.
La configuración a bajo nivel (keymaps LSP, `on_attach`, capacidades) está en `core/lsp.lua`.

---

### 🌳 Sintaxis & Parsing

| Plugin | Descripción |
|--------|-------------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Parser incremental para resaltado y plegado. |

Archivo: `plugins/treesitter.lua`.

---

### 📂 Navegación & Búsqueda

| Plugin | Descripción |
|--------|-------------|
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | Explorador de archivos lateral. |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder. |
| [nvim-projectconfig](https://github.com/nvim-projectconfig/nvim-projectconfig) | Configuración por proyecto vía `.nvim.lua`. |
| [vim-startify](https://github.com/mhinz/vim-startify) | Pantalla de inicio con accesos rápidos. |

Archivos: `plugins/nvim-tree.lua`, `plugins/fzf.lua`, `plugins/startify.lua`.

---

### ✏️ Edición

| Plugin | Descripción |
|--------|-------------|
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Cierra automáticamente paréntesis, comillas, etc. |
| [mini.surround](https://github.com/echasnovski/mini.surround) | Añade/edita/elimina surroundings (comillas, tags, etc.). |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Comenta/descomenta líneas y bloques. |
| [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) | Resalta códigos de color en tiempo real. |
| [vCoolor.vim](https://github.com/KabbAmine/vCoolor.vim) | Selector de colores visual. |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi) | Múltiples cursores. |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Scroll suave y animado. |
| [emmet-vim](https://github.com/mattn/emmet-vim) | Expansión de abreviaturas HTML/CSS. |

Archivos: `plugins/autopairs.lua`, `plugins/windwp.lua`, `plugins/mini-surround.lua`, `plugins/comment.lua`, `plugins/nvim-colorizer.lua.lua`, `plugins/colorizer.lua`, `plugins/colorpicker.lua`, `plugins/multicursors.lua`, `plugins/neoscroll.lua`, `plugins/emmet-vim.lua`.

> ⚠️ Nota: tienes `colorizer.lua` **y** `nvim-colorizer.lua.lua` (doble `.lua`). Revisa si es duplicado o si uno quedó obsoleto.

---

### 🎨 UI / Visual

| Plugin | Descripción |
|--------|-------------|
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Barra de buffers tipo pestañas. |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Guías visuales de indentación. |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Iconos por tipo de archivo (dependencia). |

Archivos: `plugins/bufferline.lua`, `plugins/indent-blankline.lua`.

---

### 🐙 Git

| Plugin | Descripción |
|--------|-------------|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Signos de cambios Git en el gutter, hunk actions, blame, etc. |

Archivo: `plugins/gitsigns.lua`.

---

### 💻 Terminal & Tmux

| Plugin | Descripción |
|--------|-------------|
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminales flotantes / divididas. |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Navegación seamless entre splits de Neovim y tmux. |
| [floaterm](https://github.com/voldikss/vim-floaterm) | Terminal flotante (cargado bajo demanda). |
| [volt](https://github.com/voldikss/volt) | Dependencia de `floaterm`. |

Archivos: `plugins/toggleterm.lua`, `plugins/tmux-navigator.lua`, `plugins/floaterm.lua`.

---

### 📝 Productividad

| Plugin | Descripción |
|--------|-------------|
| [auto-save.nvim](https://github.com/Pocco81/auto-save.nvim) | Guardado automático de buffers. |
| [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks) | Marcadores persistentes en líneas. |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Resalta `TODO`, `FIXME`, `NOTE`, etc. |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Utilidades Lua (dependencia de varios plugins). |

Archivos: `plugins/autosave.lua`, `plugins/bookmarks.lua`, `plugins/todo-comments.lua`.

---

### 📖 Markdown

| Plugin | Descripción |
|--------|-------------|
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Preview de Markdown en el navegador. |

Archivo: `plugins/markdown-preview.lua` (lazy-load por comando `:MarkdownPreview`).

---

## ⏳ Plugins No Cargados (Lazy Loading)

Estos plugins **no se cargan al inicio**; se activan cuando se invoca su comando o se abre un tipo de archivo específico:

| Plugin | Comandos / Evento | Motivo |
|--------|-------------------|--------|
| `floaterm` | `:FloatermToggle` | Solo se carga al abrir una terminal flotante. |
| `markdown-preview.nvim` | `:MarkdownPreview`, `:MarkdownPreviewToggle`, `:MarkdownPreviewStop`, `ft=markdown` | Solo para archivos Markdown. |
| `volt` | (dependencia de `floaterm`) | Se carga junto con `floaterm`. |

Esto mantiene el arranque de Neovim rápido (~40 ms de carga total de plugins en tu setup).

---

## 📌 Notas y Recomendaciones

1. **`checker.enabled = false`** en `lazy.lua`: las actualizaciones son manuales (`:Lazy update`).
2. **Tema por defecto**: se define en `core/theme.lua`. Cambia ahí para alternar entre `catppuccin`, `kanagawa` y `onedarkpro`.
3. **Keymaps**: todos los atajos globales viven en `core/keymaps.lua`; los específicos de LSP en `core/lsp.lua`.
4. **Añadir nuevos plugins**: crea un archivo en `lua/plugins/<nombre>.lua` y se cargará automáticamente vía `{ import = "plugins" }`.

---

## 📄 Licencia

Uso personal. Siéntete libre de tomar ideas y adaptarlas a tu propio entorno.
