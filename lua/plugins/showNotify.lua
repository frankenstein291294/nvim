vim.notify = require("notify")

vim.notify.setup({
    background_colour = "NotifyBackground",
    fps = 30,
    icons = { DEBUG = "", ERROR = "", INFO = "", TRACE = "✎", WARN = "" },
    render = "default", -- default, minimal, simple, compact
    stages = 'slide',   -- fade_in_slide_out, fade, slide, static
    level = 2,
    -- max_width = nil,
    top_down = true,
})

function nofication(title_message, message, type, time, wth)
    -- vim.notify.setup({max_width = wth})
    vim.notify(message, type, {
        title = title_message,
        timeout = time,
    })
end

--[[ Welcome Notification ]]
nofication("Welcome", "Keep hard working", nil, 500, nil)

--[[ Notification to save file ]]
--
-- vim.api.nvim_command("autocmd BufWritePost * lua nofication( 'Saved success', vim.fn.expand('%'), nil, 50, nil )")
--[[ vim.cmd [[ ]]
    --[[ autocmd BufWritePost * lua nofication( "Saved success", vim.fn.expand("%"), 'error', 100 ) ]]
--[[ <] ]]
