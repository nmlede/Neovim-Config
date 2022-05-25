--"-----------"
--" Dashboard "
--"-----------" 
-- Link a GitHub https://github.com/glepnir/dashboard-nvim
--
--
--
vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = { 'nvim' }
-- vim.g.dashboard_custom_footer = {}

vim.g.dashboard_custom_section = {
  a = {description = {'  New File           	 Leader nf'}, command = ':DashboardNewFile'},
  b = {description = {'  Find File          	 Leader ff'}, command = 'Telescope find_files'},
  c = {description = {'  Open Tree          	 Leader tt'}, command = 'NvimTreeToggle'},
  d = {description = {'  File History       	 Leader fh'}, command = 'DashboardFindHistory'},
  e = {description = {'  Config File        	 Leader cf'}, command = 'edit ~/.config/nvim/init.vim'},
  }