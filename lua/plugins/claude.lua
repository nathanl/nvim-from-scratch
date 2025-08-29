return {
  "pasky/claude.vim",

  enabled = false,

  config = function()
    -- Set API key from environment variable
    local api_key = os.getenv('CLAUDE_API_KEY')
    if api_key then
        vim.g.claude_api_key = api_key
    else
        vim.notify('CLAUDE_API_KEY environment variable not found', vim.log.levels.WARN)
    end

    -- Set keybindings
    vim.g.claude_map_implement = "<Leader>ci"
    vim.g.claude_map_open_chat = "<Leader>cc"
    vim.g.claude_map_send_chat_message = "<C-]>"
    vim.g.claude_map_cancel_response = "<Leader>cx"
  end,
}
