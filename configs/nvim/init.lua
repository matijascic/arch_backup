require("config.lazy")

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set relativenumber")
vim.cmd("set number")

vim.keymap.set("n", "<leader><Esc>", vim.cmd.Ex)


vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = function()
        vim.cmd('mksession! ./.session.vim')
    end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})


