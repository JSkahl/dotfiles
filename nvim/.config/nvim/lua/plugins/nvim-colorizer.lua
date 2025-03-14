return {
  'norcalli/nvim-colorizer.lua',
  config = function ()
    require("colorizer").setup()

    -- Keys
    vim.keymap.set("n", "hc", ":ColorizerToggle<CR>", {})
  end
}
