return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      -- enable syntax highlighting
      highlight = { enable = true, },
      -- enable indentation
      indent = { enable = true, },
      -- enable autotagging (w/ nvim-ts-autotag)
      autotag = { enable = true, },
      ensure_installedd = {
        'bash',
        'bibtex',
        'c',
        'cmake',
        'cpp',
        'gitignore',
        'julia',
        'latex',
        'lua',
        'python',
        'r',
        'toml',
        'vim',
        'yaml',
        'markdown',
        'markdown_inline',
      },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>'
        },
      },
    })
  end,
}
