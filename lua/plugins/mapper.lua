-- Salvar sem autocommands com Space + W
return {
 vim.keymap.set('n', '<Space>W', ':noa w<CR>', { noremap = true, silent = true })
}
