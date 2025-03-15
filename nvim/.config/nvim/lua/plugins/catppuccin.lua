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
            LineNr = { fg = colors.overlay1 },
            CursorLine = { bg = "NONE" },
            CursorLineNr = { fg = colors.flamingo },
            VertSplit = { fg = colors.overlay0 },
            WinSeparator = { fg = colors.overlay0 },
            SpecialKey = { fg = colors.lavender },
            Visual = { bg = colors.overlay0, fg = colors.text },
          }
        end,
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
