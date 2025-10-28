return {
	 {
	   "github/copilot.vim",
	   lazy = false,
	   config = function()
	     vim.g.copilot_no_tab_map = true
	     vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
	   end,
	 },
	-- {
	-- "codota/tabnine-nvim",
	-- build = "./dl_binaries.sh",
	-- config = function()
	-- require("tabnine").setup({
	-- 	disable_auto_comment = true,
	-- 	accept_keymap = "<C-e>",
	-- 	dismiss_keymap = "<C-]>",
	-- 	debounce_ms = 800,
	-- 	suggestion_color = { gui = "#808080", cterm = 244 },
	-- 	exclude_filetypes = { "TelescopePrompt" },
	-- 	log_file_path = nil,
	-- })
	-- end,
	--  },
	--  {
	--    'kiddos/gemini.nvim',
	--    opts = {}
	--  }
}
