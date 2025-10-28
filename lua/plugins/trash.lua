return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      commands = {
        delete = function(state)
          local path = state.tree:get_node().path
          vim.fn.system({"trash", path})
        end,
      },
    },
  },
}
