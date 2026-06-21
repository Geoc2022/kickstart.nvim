return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = {
        enabled = false,
        auto_refresh = false,
        keymap = {
          jump_prev = '[[',
          jump_next = ']]',
          accept = '<CR>',
          refresh = 'gr',
          open = '<M-CR>',
        },
        layout = {
          position = 'bottom',
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = false,
        hide_during_completion = false,
        debounce = 75,
        trigger_on_accept = true,
        keymap = {
          accept = '<C-J>',
          accept_word = '<C-L>',
          accept_line = false,
          next = '<C-K>',
        },
      },
      filetypes = {
        markdown = true,
        -- latex = true,
        -- lean = true,
        -- yaml = true,
        -- toml = true,
        -- ["*"] = false
        ['*'] = true,
      },
    }
  end,
}
