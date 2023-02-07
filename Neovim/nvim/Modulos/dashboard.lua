--"-----------"
--" Dashboard "
--"-----------" 
-- Link a GitHub https://github.com/glepnir/dashboard-nvim
--
--
local db = require('dashboard')
db.setup({
  theme = 'hyper',
  config = {
    week_header = {enable = true},
    shortcut = {
      { desc = ' Update', group = '@property', action = ':PlugUpdate', key = 'u'},
      { desc = ' Files', group = 'Label', action = 'Telescope find_files', key = 'f'},
      { desc = ' NewFile', group = 'Label', action = ':enew', key = 'a'},
      --{ desc = ' History', group = 'Label', action = 'Telescope command_history', key = 'd'},
      { desc = ' Tree', group = 'Number', action = ':NvimTreeToggle', key = 't'}
    },
  -- packages = { enable = true }, -- show how many plugins neovim loaded
  -- limit how many projects list, action when you press key or enter it will run this action.
  -- project = { limit = 8, icon = 'your icon', label = 'Projects', action = 'Telescope find_files cwd=' },
  -- mru = { limit = 10, icon = ' ', label = 'Last Files', },
  footer = { ''}, -- footer
  },
})


