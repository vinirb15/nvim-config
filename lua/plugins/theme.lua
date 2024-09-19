-- return {
--   {
--     'catppuccin/nvim',
--     as = 'catppuccin',
--     config = function()
--       require('catppuccin').setup({
--         flavour = 'mocha', -- ou 'latte', 'frappe', 'macchiato'
--         background = {
--           light = 'latte',
--           dark = 'mocha',
--         },
--       })
--       vim.cmd('colorscheme catppuccin')
--     end
--   },
-- }
return {
  -- outros plugins...
  {
    "Mofiqul/dracula.nvim",
    config = function()
      vim.cmd.colorscheme "dracula"
    end
  },
}

