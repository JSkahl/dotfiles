return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      { "<leader><C-b>", "<cmd>Neotree toggle position=right<CR>", desc = "Toggle Neo-tree (Right)" },
      { "<C-e>", "<cmd>Neotree focus<CR>", desc = "Focus Neo-tree" },
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true, -- Show dotfiles
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = {
            enabled = true, -- Highlights the current file
          },
          hijack_netrw_behavior = "disabled", -- Don't auto-open Neo-tree
        },
        window = {
          position = "right", -- Always open on the right
        },
      })
    end,
  },
}
