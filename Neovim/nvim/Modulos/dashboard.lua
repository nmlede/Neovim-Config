--"-----------"
--" Dashboard "
--"-----------" 
-- Link a GitHub https://github.com/glepnir/dashboard-nvim
--
--
--
local db = require('dashboard')
modulos = '~/.config/nvim/Modulos/'
db.default_executive = 'telescope'
db.custom_header = { 'nvim' }
db.custom_footer = {}
db.hide_statusline = false
db.hide_tabline = false
db.custom_center = {
      {icon = ' ',
      desc = 'Nuevo Archivo                   ',
      shortcut = 'Leader nf',
      action ='DashboardNewFile'},
      {icon = ' ',
      desc = 'Buscar Archivo                  ',
      action =  'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'Leader ff'},
      {icon = ' ',
      desc = 'Nvim Tree                       ',
      action = 'NvimTreeToggle',
      shortcut = 'Leader tt'},
      {icon = ' ',
      desc = 'Historial                       ',
      action = 'DashboardFindHistory',
      shortcut = 'Leader fh'},
      {icon = ' ',
      desc = 'Init.vim                        ',
      action = 'edit ~/.config/nvim/init.vim',
      shortcut = 'Leader cf'},
      
    }
