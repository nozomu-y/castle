local status, none_ls = pcall(require, "null-ls")
if not status then
	return
end

local formatting = none_ls.builtins.formatting
local diagnostics = none_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

none_ls.setup({
	sources = {
		formatting.prettier,
		formatting.stylua,
		diagnostics.eslint_d,
		formatting.black,
		-- diagnostics.flake8,
		diagnostics.pyproject_flake8,
		formatting.isort,
		formatting.phpcsfixer,
		formatting.latexindent,
	},
	-- configure format on save
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
