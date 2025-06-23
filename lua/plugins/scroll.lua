return {
  "karb94/neoscroll.nvim",
  config = function()
    require('neoscroll').setup({
      easing_function = "sine", -- ou "quadratic"
      hide_cursor = true,
      stop_eof = true,
    })

    local t = {}
    -- Mapeia os atalhos para scroll com duração (ms)
    t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '150'}}
    t['<C-d>'] = {'scroll', {'vim.wo.scroll', 'true', '150'}}
    t['<C-y>'] = {'scroll', {'-0.10', 'false', '50'}}
    t['<C-e>'] = {'scroll', {'0.10', 'false', '50'}}
    require('neoscroll.config').set_mappings(t)
  end
}
