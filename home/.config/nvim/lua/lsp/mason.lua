local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lsp_config_status, mason_lsp_config = pcall(require, "mason-lspconfig")
if not mason_lsp_config_status then
    return
end

local mason_lsp_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_lsp_ls_status then
    return
end

mason.setup()

mason_lsp_config.setup({
    ensure_installed = {
        "tsserver",
        "html",
        "sumneko_lua",
        "pyright",
    },
})

mason_null_ls.setup({
    ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
        "autopep8",
        "flake8",
        "isort",
    },
})
