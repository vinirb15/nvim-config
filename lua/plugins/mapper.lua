return {
 vim.keymap.set('n', '<leader>W', ':noa w<CR>', { noremap = true, silent = true });
 vim.keymap.set('n', '<leader>P', ':lua print(vim.fn.expand("%:p"))<CR>', { noremap = true, silent = true });
 vim.keymap.set('n', '<leader>V', ':w | !open %', { noremap = true, silent = true });
}
