return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true, -- false means don't suggest autocompletions as I type
        keymap = {
          trigger = "<C-s>",      -- Ctrl+s to suggest autocompletions
          accept = "<C-y>",       -- Ctrl+y to accept
          next = "<C-n>",         -- Ctrl+n for next
          prev = "<C-p>",         -- Ctrl+p for previous
          dismiss = "<C-e>",      -- Ctrl+e to dismiss
          accept_word = false,    -- give this a keybinding to use it
          accept_line = false,    -- give this a keybinding to use it
        },
      },
      -- debug = true  -- Uncomment to enable debug logging, see `:Copilot log`
    })
  end,
}
