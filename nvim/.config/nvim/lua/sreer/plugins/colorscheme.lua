return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("rose-pine").setup({
      variant = "main",
      highlight_groups = {
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "base" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "base" },
        TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
      },
    })
    vim.cmd("colorscheme rose-pine")
  end
}
