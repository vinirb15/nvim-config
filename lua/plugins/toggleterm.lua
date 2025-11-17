-- return {
--   'akinsho/toggleterm.nvim',
--   version = "*",
--   keys = {
--     { '<leader>tt', ':ToggleTerm direction=tab<CR>', desc = 'Toggle terminal tab', mode = 'n' },
--   },
--   config = function()
--     require('toggleterm').setup()
--   end
-- }

return {
  'akinsho/toggleterm.nvim',
  version = "*",
  keys = {
    { '<leader>tt', ':ToggleTerm direction=tab<CR>', desc = 'Toggle terminal tab', mode = 'n' },
    { '<leader>t1', ':1ToggleTerm direction=tab<CR>', desc = 'Terminal 1', mode = 'n' },
    { '<leader>t2', ':2ToggleTerm direction=tab<CR>', desc = 'Terminal 2', mode = 'n' },
    { '<leader>t3', ':3ToggleTerm direction=tab<CR>', desc = 'Terminal 3', mode = 'n' },
  },
  config = function()
    require('toggleterm').setup({
      size = 20,
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    })
  end
}
