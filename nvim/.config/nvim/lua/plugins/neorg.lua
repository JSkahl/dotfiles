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
              personal = '~/neorg',
              college = '~/neorg',
              todo_college = '~/neorg/college',
            },
          },
        },
      },
    }
  end,
}
