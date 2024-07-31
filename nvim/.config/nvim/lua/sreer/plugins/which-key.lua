return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function()
    local wk = require('which-key')
    wk.setup()
    wk.add({
      { "<leader>b", group = "[B]uffer" },
      { "<leader>f", group = "[F]ind" },
      { "<leader>l", group = "[L]aTeX" },
      { "<leader>s", group = "[S]plit" },
    })
  end
}
