return {
  'fzdwx/bufline.nvim',
  event = 'BufEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local buf = require 'bufline'
    buf.setup {
      separator = function()
        return {
          str = '/',
          hl = '',
        }
      end,
      folder = function()
        return {
          str = '',
          hl = 'BufLineFolder',
        }
      end,
    }
  end,
}
