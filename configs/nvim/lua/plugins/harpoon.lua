return {    
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("harpoon"):setup() 
        vim.keymap.set("n", "<leader>`", function() require("harpoon"):list():add() end, {})

        vim.keymap.set("n", "<leader>!", function() require("harpoon"):list():replace_at(1) end, {})
        vim.keymap.set("n", "<leader>@", function() require("harpoon"):list():replace_at(2) end, {})
        vim.keymap.set("n", "<leader>#", function() require("harpoon"):list():replace_at(3) end, {})
        vim.keymap.set("n", "<leader>$", function() require("harpoon"):list():replace_at(4) end, {})
        vim.keymap.set("n", "<leader>%", function() require("harpoon"):list():replace_at(5) end, {})

       

        vim.keymap.set("n", "<leader>1", function() require("harpoon"):list():select(1) end, {})
        vim.keymap.set("n", "<leader>2", function() require("harpoon"):list():select(2) end, {})
        vim.keymap.set("n", "<leader>3", function() require("harpoon"):list():select(3) end, {})
        vim.keymap.set("n", "<leader>4", function() require("harpoon"):list():select(4) end, {})
        vim.keymap.set("n", "<leader>5", function() require("harpoon"):list():select(5) end, {})

        vim.keymap.set("n", "<leader>~", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, {})
    end,
}
