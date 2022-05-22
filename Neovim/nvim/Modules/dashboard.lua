-- Dashboard ---------------------------------------------------------------------------------"
-- Link to GitHub https://github.com/glepnir/dashboard-nvim
-- Dashboard seccion file: ~/.local/share/nvim/plugged/dashboard-nvim/autoload/dashboard/section.vim"
--
--
--
vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = { 'nvim' }

vim.g.dashboard_custom_section = {
  a = {description = {'  New File           	 Leader nf'}, command = ':DashboardNewFile'},
  b = {description = {'  Find File          	 Leader ff'}, command = 'Telescope find_files'},
  c = {description = {'  Open Tree          	 Leader tt'}, command = 'NvimTreeToggle'},
  d = {description = {'  File History       	 Leader fh'}, command = 'DashboardFindHistory'},
  -- e = {description = {'  Dashboard           	 Leader db'}, command = 'Dashboard'},
  f = {description = {'  Config File        	 Leader cf'}, command = 'edit ~/.config/nvim/init.vim'},
  -- g = {description = {'  Exit     		 :q'}, command = 'exit'}
}
