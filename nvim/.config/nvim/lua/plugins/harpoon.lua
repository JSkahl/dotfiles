return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function ()
        local ui = require("harpoon.ui")
        local mark = require("harpoon.mark")

        -- Keymaps
        vim.keymap.set("n", "<leader>HH", function() ui.toggle_quick_menu() end) -- Open Harpoon menu
        vim.keymap.set("n", "<leader>H", function() mark.add_file() end) -- Shot file
        vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end) -- Goes to buffer 1 
        vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end) -- Goes to buffer 2 
        vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end) -- Goes to buffer 3 
        vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end) -- Goes to buffer 4 
        vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end) -- Goes to buffer 5 
    end
}
