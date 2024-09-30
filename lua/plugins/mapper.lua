return {
  vim.keymap.set('n', '<leader>W', function() vim.cmd('noa w') end, { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>P', function() print(vim.fn.expand("%:p")) end, { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>V', function() vim.cmd('w') vim.cmd('!open %') end, { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>T', function() vim.cmd('tab split #') end, { noremap = true, silent = true }),
}
