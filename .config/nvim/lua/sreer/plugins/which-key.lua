return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {},
  config = function()
    local wkey = require('which-key')
    wkey.setup({
      { "<leader>b", group = "[B]uffer" },
      { "<leader>b_", hidden = true },
      { "<leader>f", group = "[F]ind" },
      { "<leader>f_", hidden = true },
      { "<leader>l", group = "[L]aTeX" },
      { "<leader>l_", hidden = true },
      { "<leader>s", group = "[S]plit" },
      { "<leader>s_", hidden = true },
    })
  end
}
