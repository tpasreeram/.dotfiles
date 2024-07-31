return {
  "kelly-lin/ranger.nvim",
  config = function()
    require("ranger-nvim").setup({
      replace_netrw = true,
      ui = {
        border = "none",
        height = 0.975,
        width = 1,
        x = 0.5,
        y = 0.5,
      },
    })
    vim.api.nvim_set_keymap("n", "<leader>ef", "Ranger", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })
  end,
}
