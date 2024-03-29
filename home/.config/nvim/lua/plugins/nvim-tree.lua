local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    filters = {
        git_ignored = false,
    },
})
