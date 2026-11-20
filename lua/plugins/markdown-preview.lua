return {
    'iamcco/markdown-preview.nvim',
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        require('lazy').load({plugins = {'markdown-preview.nvim'}})
        vim.fn["mkdp#util#install"]()
    end,

    -- Aquí agregas tus opciones de configuración
    init = function()
        -- Opciones de automatización
        vim.g.mkdp_auto_start = 0          -- (0) No abrir la vista previa automáticamente al entrar en un buffer Markdown
        vim.g.mkdp_auto_close = 1          -- (1) Cerrar la vista previa al cambiar a un buffer que no sea Markdown
        vim.g.mkdp_refresh_slow = 0        -- (0) Actualización en tiempo real (1 para actualizar solo al guardar/salir de insert)

        -- Opciones de navegador y red
        --vim.g.mkdp_browser = 'firefox'     -- Especifica el navegador (ej. 'google-chrome', 'firefox', etc.)
        vim.g.mkdp_browser = 'brave-browser'     -- Especifica el navegador (ej. 'google-chrome', 'firefox', etc.)
        vim.g.mkdp_echo_preview_url = 1    -- (0) Muestra la URL de la vista previa en la línea de comandos
        vim.g.mkdp_port = '8888'           -- ('' ) Usa un puerto fijo (por defecto es aleatorio)

        -- Opciones de renderizado (se pasan como una tabla/diccionario)
        vim.g.mkdp_preview_options = {
            mkit = {},                       -- Opciones de markdown-it
            katex = {},                      -- Opciones de KaTeX (matemáticas)
            uml = {},                        -- Opciones de PlantUML
            maid = {},                       -- Opciones de Mermaid
            disable_sync_scroll = 0,         -- (0) Habilita el scroll sincronizado
            sync_scroll_type = 'middle',     -- ('middle') 'middle', 'top' o 'relative'
            hide_yaml_meta = 1,              -- (1) Oculta el frontmatter YAML
            sequence_diagrams = {},          -- Opciones de js-sequence-diagrams
            flowchart_diagrams = {},         -- Opciones de flowchart.js
            content_editable = false,        -- (false) Permite editar el contenido en la vista previa
            disable_filename = 0,            -- (0) Muestra el nombre del archivo en la cabecera
        }

        -- Forzar que solo se active en archivos Markdown (opcional)
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_echo_preview_url = 1
    end,
}
