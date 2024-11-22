return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v2.x",
  dependencies = {
    { "neovim/nvim-lspconfig" }, -- Required
  },
  config = function()
    local lsp = require("lsp-zero")

    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        -- "hadolint",
        -- "prettier",
        "eslint",
        "lua_ls",
        "html",
        "tailwindcss",
        "dockerls",
        "gopls",
        "jsonls",
        "kotlin_language_server",
        "ts_ls",
      },
      handlers = {
        lsp.default_setup,
        lua_ls = function()
          local lua_opts = lsp.nvim_lua_ls()
          require("lspconfig").lua_ls.setup(lua_opts)
        end,
        eslint = function()
          require("lspconfig").eslint.setup({
            settings = {
              rulesCustomizations = {
                ["no-console"] = "warn", -- Aviso para console.log
                ["indent"] = { "error", 2 }, -- Identação de 2 espaços
                ["quotes"] = { "error", "double" }, -- Usar aspas duplas
                ["semi"] = { "error", "always" }, -- Exigir ponto e vírgula
                ["no-var"] = "error", -- Proíbe o uso de var
                ["prefer-const"] = "error", -- Incentiva o uso de const
                ["no-unused-vars"] = "error", -- Erro para variáveis não utilizadas
                ["sort-imports"] = {
                  "error",
                  {
                    ignoreCase = true,
                    ignoreDeclarationSort = true,
                    allowSeparatedGroups = false,
                  },
                },
              },
            },
          })
        end,
      },
    })

    local cmp_action = require("lsp-zero").cmp_action()
    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    require("luasnip.loaders.from_vscode").lazy_load()

    -- `/` cmdline setup.
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- `:` cmdline setup.
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "tabnine", priority = 1000 },
        { name = "nvim_lsp", priority = 900 },
        { name = "luasnip", priority = 800, keyword_length = 2 },
        { name = "buffer", priority = 700, keyword_length = 3 },
        { name = "path", priority = 600 },
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        ["<Tab>"] = cmp_action.luasnip_supertab(),
        ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
      }),
    })
  end,
}
