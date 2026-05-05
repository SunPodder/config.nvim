local mason = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
mason.setup()

local function setup_server(name)
	vim.lsp.config(name, {
		capabilities = capabilities,
	})
	vim.lsp.enable(name)
end

setup_server("clangd")
setup_server("rust_analyzer")

