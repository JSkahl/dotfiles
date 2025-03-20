return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  build = ':Neorg sync-parsers',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {
          config = {
            icon_preset = 'basic',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
              personal = '~/notes/notes/personal',
              college = '~/notes/notes/college',
            },
            default_workspace = 'notes',
          },
        },
      },
    }
  end,
}
