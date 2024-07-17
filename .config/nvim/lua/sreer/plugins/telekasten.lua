return {
  'renerocksai/telekasten.nvim',
  dependencies = {'nvim-telescope/telescope.nvim'},
  config = function()
    require('telekasten').setup({
      home = vim.fn.expand("~/Documents/Notes"), -- Put the name of your notes directory here
      vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")
    })
  end
}
