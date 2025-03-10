return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require 'telescope'
    local actions = require 'telescope.actions'

    telescope.setup {
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
        },
        prompt_prefix = '󰭎 ',
        selection_caret = '➤ ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        sorting_strategy = 'ascending',
        layout_strategy = 'flex',
        layout_config = {
          horizontal = { width = 0.9, preview_width = 0.5 },
          vertical = { width = 0.8 },
        },
        file_ignore_patterns = { 'node_modules/.*', '.git/.*' },
        winblend = 10,
        border = true,
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        set_env = { ['COLORTERM'] = 'truecolor' },
        mappings = {
          i = {
            ['<C-n>'] = actions.move_selection_next,
            ['<C-p>'] = actions.move_selection_previous,
            ['<C-c>'] = actions.close,
            ['<CR>'] = actions.select_default,
            ['<C-x>'] = actions.select_horizontal,
            ['<C-v>'] = actions.select_vertical,
            ['<C-t>'] = actions.select_tab,
          },
          n = {
            ['q'] = actions.close,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        live_grep = {
          theme = 'ivy',
        },
      },
      extensions = {},
    }

    -- Keymaps
    local map = vim.keymap.set
    map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find Files' })
    map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live Grep' })
    map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find Buffers' })
    map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help Tags' })
  end,
}
