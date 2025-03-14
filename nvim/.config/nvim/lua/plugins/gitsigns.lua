return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup()

    -- Keys
    vim.keymap.set("n", "gb", ":Gitsigns blame_line<CR>", {})
  end
}
