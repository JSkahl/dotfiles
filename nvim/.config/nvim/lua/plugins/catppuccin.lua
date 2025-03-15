return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        custom_highlights = function(colors)
          return {
            LineNr = { fg = colors.overlay1 },                    -- Change line number color
            CursorLineNr = { fg = colors.lavender, bold = true }, -- Highlighted line number
            VertSplit = { fg = colors.overlay0 },                 -- Split border color
            WinSeparator = { fg = colors.overlay0 },              -- Window separator (useful for Explorer)
            SpecialKey = { fg = colors.lavender },                -- Paths and comments
          }
        end,
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
