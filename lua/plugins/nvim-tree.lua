
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


--[[
vim.g.nvim_tree_bindings = {
   { key = "I", cb = "toggle_ignored" },
   { key = "H", cb = "toggle_dotfiles" },
   { key = "h", cb = "toggle_files" },
   { key = "R", cb = "refresh" },
   { key = "<TAB>", cb = "preview" },
   { key = "<C-CR>", cb = "cd" },
   { key = "B", cb = "bookmarks" },
   { key = "b", cb = "add_bookmark" },
   { key = "d", cb = "remove_bookmark" },
   { key = "E", cb = "edit" },
   { key = "v", cb = "split" },
   { key = "s", cb = "vsplit" },
   { key = "t", cb = "tabnew" },
   { key = "l", cb = "set_focus" },
}
]]--

