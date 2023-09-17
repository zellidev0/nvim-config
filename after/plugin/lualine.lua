require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    padding = 1,
    ignore_focus = {},
    draw_empty = false,
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      'diff',
      {
        'diagnostics',
        on_click = function()
          vim.cmd('TroubleToggle')
        end,
      },
    },
    lualine_c = {
      {
        'filename',
        on_click = function(_nb_of_clicks)
          local path
          if (_nb_of_clicks == 1) then
            path = vim.fn.getreg('%')
          elseif (_nb_of_clicks == 2) then
            path = vim.fn.expand('%:p')
          end
          print('copying path & filename: ' .. path)
          vim.cmd("call provider#clipboard#Call('set', [ ['" .. path .. "'], 'v','\"'])")
        end,
      },
    },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
