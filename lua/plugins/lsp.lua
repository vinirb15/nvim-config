return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v2.x",
  dependencies = {
    { "neovim/nvim-lspconfig" },
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
  end,
}
