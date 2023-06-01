vim.notify = require("notify")

local icons = {
    success = '',
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = ''
}

-- Type errros = error, vim.log.levels.WARN, nil
-- Render style = default, minimal, simple, compact
-- Stages = fade_in_slide_out, fade, slide, static

function nofication(title_message, message, type, time, ico, style, width, animation)
    vim.notify.setup({
        render = style,
        max_width = width,
        stages = animation,
    })
    vim.notify(message, type, {
        title = title_message,
        timeout = time,
        icon = ico,
        mode = "async",
    })
end

--[[ Welcome Notification ]]
nofication("Welcome", "Keep hard working", nil, 500, icons.success, "default", 20, "fade")


--[[ Notification to save file ]]
vim.cmd [[
    autocmd BufWritePost * lua nofication( "Saved success", "", nil, 100, '', "compact", 20, "slide" )
]]
--autocmd BufWritePost * lua nofication( "Saved success", vim.fn.expand("%"), nil, 100, "compact", 20, "slide" )
