return {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    build = ':Neorg sync-parsers', -- Updated from "run" (newer Neovim versions use "build")
    config = function()
	require('neorg').setup {
	    load = {
		['core.defaults'] = {}, -- Loads default modules
		['core.concealer'] = { -- Enables icons and better syntax highlighting
		    config = {
			icon_preset = 'basic', -- You can change this to "varied" or other presets
		    },
		},
		['core.dirman'] = { -- Manages Neorg directories
		    config = {
			workspaces = {
			    my_notes = '~/neorg',
			},
			default_workspace = 'my_notes',
		    },
		},
	    },
	}
    end,
} 
