return {
  vim.keymap.set('n', '<leader>W', function() vim.cmd('noa w') end, { noremap = true, silent = true, desc = 'Save without autocommands' }),
  vim.keymap.set('n', '<leader>P', function() local path = vim.fn.expand("%:p") print(path) vim.fn.setreg('+', path) end, { noremap = true, silent = true, desc = 'Print and copy file path to clipboard' }),
  vim.keymap.set('n', '<leader>V', function() vim.cmd('w') vim.cmd('!open %') end, { noremap = true, silent = true, desc = 'Save and open in default application' }),
  vim.keymap.set('n', '<leader>T', function() vim.cmd('tab split #') end, { noremap = true, silent = true, desc = 'Split tab with alternate file' }),
  vim.keymap.set('n', '<leader>ga', function() require('gitsigns').stage_buffer() end, { noremap = true, silent = true, desc = 'Git add current buffer' }),
  vim.keymap.set('n', '<leader>gA', function() require('gitsigns').undo_stage_buffer() end, { noremap = true, silent = true, desc = 'Git unstage current buffer' }),
  vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true }),
  vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Correção Rápida" })
}
