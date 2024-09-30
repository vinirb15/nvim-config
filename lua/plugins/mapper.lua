return {
 vim.keymap.set('n', '<Space>W', ':noa w<CR>', { noremap = true, silent = true });
 vim.keymap.set('n', '<leader>P', ':lua print(vim.fn.expand("%:p"))<CR>', { noremap = true, silent = true });
 vim.keymap.set('n', '<Space>V', ':w | !open %', { noremap = true, silent = true });
}
