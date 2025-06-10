return  {
    "azabiong/vim-highlighter",
    init = function()
    end,
    vim.keymap.set('n', '<leader>ms', function() vim.cmd('Hi +') end, { noremap = true, silent = true, desc = 'Hi set' }),
    vim.keymap.set('n', '<leader>me', function() vim.cmd('Hi -') end, { noremap = true, silent = true, desc = 'Hi erase' }),
    vim.keymap.set('n', '<leader>mc', function() vim.cmd('Hi clear') end, { noremap = true, silent = true, desc = 'Hi clear' }),
  }
