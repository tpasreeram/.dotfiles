return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    telescope.setup({
      defaults = {
        path_display= { 'smart' },
        mappings = {
          i = {
            ["<M-k>"] = actions.move_selection_previous,
            ["<M-j>"] = actions.move_selection_next,
          },
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      },
    })
    telescope.load_extension('fzf')
    telescope.load_extension('ui-select')

    -- set keymaps
    local keymap = vim.keymap
    local builtin = require('telescope.builtin')

    keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "[F]ind [H]elp" })
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind [F]iles" })
    keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "[F]ind [R]ecent files" })
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "[F]ind by [G]rep" })
    keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[F]ind existing [B]uffers" })
    keymap.set('n', '<leader>fw', builtin.grep_string, { desc = "[F]ind current [W]ord" })

    local function find_git_root()
      local current_file = vim.api.nvim_buf_get_name(0)
      local current_dir
      local cwd = vim.fn.getcwd()
      if current_file == '' then
        current_dir = cwd
      else
        current_dir = vim.fn.fnamemodify(current_file, ':h')
      end
      local git_root = vim.fn.systemlist('git -C ' .. vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
      if vim.v.shell_error ~= 0 then
        print 'Not a git repository. Searching on current working directory'
        return cwd
      end
      return git_root
    end
    local function live_grep_git_root()
      local git_root = find_git_root()
      if git_root then
        require('telescope.builtin').live_grep {
          search_dirs = { git_root },
        }
      end
    end
    vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})
    vim.keymap.set('n', '<leader>fG', ':LiveGrepGitRoot<cr>', { desc = '[F]ind by [G]rep on Git Root' })

  end,
}
