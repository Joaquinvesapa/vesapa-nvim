require('lualine').setup
{
   options = {
       icons_enabled = true,
       theme = 'rose-pine',
       component_separators = '|',
       section_separators = { left = '', right = '' },
   },
   sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'branch'}
        },
    inactive_sections = {
        lualine_b = {}
    }
   }
