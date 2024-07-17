return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
     'windwp/nvim-ts-autotag',
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "bash", "bibtex", "c", "cmake", "cpp", "lua", "vim", "vimdoc", "python", "latex", "gitignore" },
      sync_install = false,
      auto_install = true,
      ignore_install = { "javascript" },
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true, },
      modules = {},
    })
  end,
}
