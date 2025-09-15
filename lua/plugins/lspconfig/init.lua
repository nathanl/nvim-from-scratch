local M = { "neovim/nvim-lspconfig" }

M.dependencies = {
  "folke/neodev.nvim",
  "williamboman/mason.nvim",
  {
    "williamboman/mason-lspconfig.nvim",
    config = { automatic_installation = true, }
  },
}

function M.config()
  local servers = {
    bashls = {},
    lua_ls = {
      Lua = {
        telemetry = { enable = false },
        workspace = { checkThirdParty = false },
      },
    },
  }

  require("neodev").setup({})
  require("mason").setup()

  local function on_attach(client, buffer)
    -- Set up LSP keybindings
    require("plugins.lspconfig.keymaps").setup(client, buffer)
    -- Format on save
    -- (commented out because this has been buggy - 
    -- https://github.com/elixir-lang/expert/issues/83)
    -- require("plugins.lspconfig.formatting").setup(client, buffer)
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

  local mason_lspconfig = require("mason-lspconfig")

  mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(servers),
  })

  mason_lspconfig.setup_handlers({
    function(server)
      require("lspconfig")[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = servers[server],
      })
    end,
  })

  -- Configure Expert language server for Elixir
  require('lspconfig.configs').expert = {
    default_config = {
      -- as installed by Mason
      cmd = { 'expert' },
      filetypes = { 'elixir', 'eelixir', 'heex' },
      root_dir = require('lspconfig.util').root_pattern('mix.exs', '.git'),
      settings = {},
    },
  }

  require('lspconfig').expert.setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })
end

return M
