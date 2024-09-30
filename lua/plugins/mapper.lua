return {
  vim.keymap.set('n', '<leader>W', function() vim.cmd('noa w') end, { noremap = true, silent = true, desc = 'Save without autocommands' }),
  vim.keymap.set('n', '<leader>P', function() print(vim.fn.expand("%:p")) end, { noremap = true, silent = true, desc = 'Print current file path' }),
  vim.keymap.set('n', '<leader>V', function() vim.cmd('w') vim.cmd('!open %') end, { noremap = true, silent = true, desc = 'Save and open in default application' }),
  vim.keymap.set('n', '<leader>T', function() vim.cmd('tab split #') end, { noremap = true, silent = true, desc = 'Split tab with alternate file' }),
}
