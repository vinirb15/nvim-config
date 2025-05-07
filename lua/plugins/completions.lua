return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	-- {
 --    "github/copilot.vim",
 --    lazy = false,
 --    config = function()
 --      vim.g.copilot_no_tab_map = true
 --      vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
 --    end,
 --  },
 -- 	{
	-- 	"codota/tabnine-nvim",
	-- 	build = "./dl_binaries.sh",
	-- 	config = function()
	-- 	require("tabnine").setup({
	-- 		disable_auto_comment = true,
	-- 		accept_keymap = "<C-e>",
	-- 		dismiss_keymap = "<C-]>",
	-- 		debounce_ms = 800,
	-- 		suggestion_color = { gui = "#808080", cterm = 244 },
	-- 		exclude_filetypes = { "TelescopePrompt" },
	-- 		log_file_path = nil,
	-- 	})
	-- 	end,
	-- },
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					-- ["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
