return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    disabled_filetypes = {"oil"},
  },
  config = function()
    local ht = require('hardtime')
    ht.setup()
  end
}
