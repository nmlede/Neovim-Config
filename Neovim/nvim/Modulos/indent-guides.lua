------------------------------------
-- Configuracion de Indent-guides --
------------------------------------
-- Link a GitHub: https://github.com/glepnir/indent-guides.nvim
--
--
-- Basicos
indent_levels = 30;
indent_guide_size = 1;
indent_start_level = 1;
indent_enable = true;
indent_space_guides = true;
indent_tab_guides = false;
indent_soft_pattern = '\\s';
exclude_filetypes = {'help','dashboard','dashpreview','NvimTree'};
even_colors = { fg = '#2a3834',bg = '#332b36' };
odd_colors = {fg = '#332b36',bg = '#2a3834'};

require('indent_guides').setup({
  -- Agrega tus opciones aca
})