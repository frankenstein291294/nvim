return {
    "nvzone/floaterm",
    dependencies = "nvzone/volt",
    cmd = "FloatermToggle",
    opts = {
        mappings = {
            term = function(buf)
                vim.keymap.set({ "n", "t" }, "<Esc>", function()
                    -- Envía <C-h> sin remapear (simula la pulsación)
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-h>", true, false, true), "n", false)
                    -- Luego ejecuta el toggle
                    vim.cmd("FloatermToggle")
                end,
                { buffer = buf, noremap = true, silent = true })
            end
        },
    },
}
