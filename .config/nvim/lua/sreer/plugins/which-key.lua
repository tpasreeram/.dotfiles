return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {},
  config = function()
    local wkey = require('which-key')
    wkey.setup()
    wkey.register {
      ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
      ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]plit', _ = 'which_key_ignore' },
    }
  end
}
