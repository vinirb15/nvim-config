local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end


-- autoopen and outoclose md server
vim.g.mkdp_auto_start = 1
vim.g.mkdp_auto_close = 1

vim.opt.guifont = "FiraCode Nerd Font:h17"
vim.cmd([[ autocmd BufWritePre * :set fileformat=unix ]])
vim.o.fileformat = "unix"

require "lazy_setup"
require "polish"
require("telescope").setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "dist",
      ".git",
      "public"
    }
  }
}
