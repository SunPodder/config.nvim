require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end,
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").clangd.setup({
	capabilities = capabilities,
})
require("lspconfig").rust_analyzer.setup({
	capabilities = capabilities,
})
require("lspconfig").zls.setup({
	capabilities = capabilities,
})
require("lspconfig").texlab.setup({
	capabilities = capabilities,
})
