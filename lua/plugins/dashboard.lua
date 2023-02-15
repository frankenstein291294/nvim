require('dashboard').setup ({

  theme = 'doom',
  config = {
    header = {}, --your header
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'Find Dotfiles',
        key = 'f',
        keymap = 'SPC f d',
        action = 'lua print(3)'
      },
    },
    footer = {},  --your footer
  }




  --[[ theme = 'hyper', --  theme is doom and hyper default is hyper ]]
  --[[ config = { ]]
  --[[   week_header = { ]]
  --[[     enable = true, ]]
  --[[   }, ]]
  --[[   shortcut = { ]]
  --[[     {  ]]
  --[[       desc = ' Update', group = '@property', action = 'Lazy update', key = 'u'  ]]
  --[[     }, ]]
  --[[     { ]]
  --[[       icon = ' ', ]]
  --[[       icon_hl = '@variable', ]]
  --[[       desc = 'Files', ]]
  --[[       group = 'Label', ]]
  --[[       action = 'Telescope find_files', ]]
  --[[       key = 'f', ]]
  --[[     }, ]]
  --[[     { ]]
  --[[       desc = ' Apps', ]]
  --[[       group = 'DiagnosticHint', ]]
  --[[       action = 'Telescope app', ]]
  --[[       key = 'a', ]]
  --[[     }, ]]
  --[[     { ]]
  --[[       desc = ' dotfiles', ]]
  --[[       group = 'Number', ]]
  --[[       action = 'Telescope dotfiles', ]]
  --[[       key = 'd', ]]
  --[[     }, ]]
  --[[   }, ]]
  --[[ }, ]]

})



















--[[ local home = os.getenv('HOME') ]]
--[[ local project_path = os.getenv('PWD') ]]
--[[ local db = require('dashboard') ]]
--[[  ]]
--[[ db.session_directory = home .. '/.dashboard-nvim/' ]]
--[[ db.preview_file_path = home .. '/.config/nvim/static/neovim.cat' ]]
--[[ db.preview_file_height = 11 ]]
--[[ db.preview_file_width = 70 ]]
--[[ db.custom_header = { ]]
--[[   ' ███╗   ██╗    ███████╗     ██████╗     ██╗   ██╗    ██╗    ███╗   ███╗              ██╗    ██████╗     ███████╗ ', ]]
--[[   ' ████╗  ██║    ██╔════╝    ██╔═══██╗    ██║   ██║    ██║    ████╗ ████║              ██║    ██╔══██╗    ██╔════╝ ', ]]
--[[   ' ██╔██╗ ██║    █████╗      ██║   ██║    ██║   ██║    ██║    ██╔████╔██║    █████╗    ██║    ██║  ██║    █████╗   ', ]]
--[[   ' ██║╚██╗██║    ██╔══╝      ██║   ██║    ╚██╗ ██╔╝    ██║    ██║╚██╔╝██║    ╚════╝    ██║    ██║  ██║    ██╔══╝   ', ]]
--[[   ' ██║ ╚████║    ███████╗    ╚██████╔╝     ╚████╔╝     ██║    ██║ ╚═╝ ██║              ██║    ██████╔╝    ███████╗ ', ]]
--[[   ' ╚═╝  ╚═══╝    ╚══════╝     ╚═════╝       ╚═══╝      ╚═╝    ╚═╝     ╚═╝              ╚═╝    ╚═════╝     ╚══════╝ ', ]]
--[[ } ]]
--[[ db.custom_center = { ]]
--[[   { ]]
--[[     icon = '⌚ ', ]]
--[[     desc = 'Recently latest session                  ', ]]
--[[     action ='SessionLoad', ]]
--[[     shortcut = 'Leader sl' ]]
--[[   }, ]]
--[[   { ]]
--[[     icon = '🌀 ', ]]
--[[     desc = 'Save Session                             ', ]]
--[[     action ='SessionSave', ]]
--[[     shortcut = 'Leader ss' ]]
--[[   }, ]]
--[[   { ]]
--[[     icon = '🧾 ', ]]
--[[     desc = 'Find File                                 ', ]]
--[[     action = ':Files', ]]
--[[     shortcut = 'Leader e' ]]
--[[   }, ]]
--[[   { ]]
--[[     icon = '📂 ', ]]
--[[     desc ='File Browser                              ', ]]
--[[     action =  ':RnvimrToggle', ]]
--[[     shortcut = 'Leader f' ]]
--[[   }, ]]
--[[   { ]]
--[[     icon = '🏠 ', ]]
--[[     desc = 'Home dashboard                           ', ]]
--[[     action =':Dashboard', ]]
--[[     shortcut = 'Leader sd' ]]
--[[   }, ]]
--[[   { ]]
--[[     icon = '🪟 ', ]]
--[[     desc = 'Open new tab                              ', ]]
--[[     action =':tabnew', ]]
--[[     shortcut = 'Leader t' ]]
--[[   } ]]
--[[ } ]]
--[[  ]]
--[[ db.custom_footer = { ]]
--[[   '💀 Developer: ⚡Frankenstein ⚡', ]]
--[[   '🏠 Project path: 📒 ' .. project_path .. ' 📒', ]]
--[[   '⌚ Time: ' .. os.date() .. '', ]]
--[[   '', ]]
--[[   '▶ Motivation of day ◀', ]]
--[[   '💥 Discipline beats natural talent and will eventually beat intelligence. 💥' ]]
--[[ } ]]
--[[  ]]
--[[ vim.cmd([[ ]]
--[[   nmap <Leader>ss :<C-u>SessionSave<CR> ]]
--[[   nmap <Leader>sl :<C-u>SessionLoad<CR> ]]
--[[   nmap <Leader>sd :Dashboard<CR> ]]
--[[ <]) ]]
