return {
  'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("telescope").setup{
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "dist",
          ".git",
          "public",
          "venv",
          "%.spec.ts",
          "%.spec.js"
        }
      }
    }
  end
}
