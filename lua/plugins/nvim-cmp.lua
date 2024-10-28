return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- Dependências de fontes para completions
    "hrsh7th/cmp-nvim-lsp", 
    "hrsh7th/cmp-buffer", 
    "hrsh7th/cmp-path", 
    "hrsh7th/cmp-cmdline"
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' }
      })
    })
  end,
}
