return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"

  config = function()
    require("neo-tree").setup()

    vim.keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>")
    vim.keymap.set("n", "<C-e>", "<Cmd>Neotree<CR>")
  end,

  opts = {
    window = {
      position = "right",
    },
  },

  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        ".git",
      },
      always_show = {
        ".env",
      },
    },
  },
}
