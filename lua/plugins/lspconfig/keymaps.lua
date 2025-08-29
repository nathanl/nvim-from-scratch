local M = {}

function M.setup(client, buffer)
  local lsp = vim.lsp
  local telescope = require("telescope.builtin")
  local formatting = client.supports_method("textDocument/formatting")

  local wk = require("which-key")
  
  -- LSP keymaps with new which-key API
  local lsp_mappings = {
    { "<LocalLeader>", group = "lsp", buffer = buffer },
    { "<LocalLeader>R", lsp.buf.rename, desc = "Rename", buffer = buffer },
    { "<LocalLeader>S", telescope.lsp_workspace_symbols, desc = "Symbols", buffer = buffer },
    { "<LocalLeader>a", lsp.buf.code_action, desc = "Code actions", buffer = buffer },
    { "<LocalLeader>d", vim.diagnostic.open_float, desc = "Diagnostics", buffer = buffer },
    { "<LocalLeader>r", telescope.lsp_references, desc = "References", buffer = buffer },
    { "<LocalLeader>s", telescope.lsp_document_symbols, desc = "Symbols", buffer = buffer },
  }
  
  -- Add format mapping conditionally
  if formatting then
    table.insert(lsp_mappings, { "<LocalLeader>f", lsp.buf.format, desc = "Format", buffer = buffer })
  end
  
  -- Other keymaps
  local other_mappings = {
    { "K", lsp.buf.hover, desc = "Hover", buffer = buffer },
    { "<C-]>", lsp.buf.definition, desc = "Go to definition", buffer = buffer },
    { "[d", vim.diagnostic.goto_prev, desc = "Prev diagnostic", buffer = buffer },
    { "]d", vim.diagnostic.goto_next, desc = "Next diagnostic", buffer = buffer },
  }
  
  wk.add(lsp_mappings)
  wk.add(other_mappings)
  
  -- Debug: also set direct keymap to ensure it works
  vim.keymap.set('n', '<LocalLeader>d', vim.diagnostic.open_float, { buffer = buffer, desc = "Open diagnostic float" })
end

return M
