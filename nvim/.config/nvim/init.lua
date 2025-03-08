-- Load core settings
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

-- Load plugin manager
require 'plugins.lazy'

-- Setup plugins
require('lazy').setup 'plugins'
