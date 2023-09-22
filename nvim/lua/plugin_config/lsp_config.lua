require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'clangd', 'rust_analyzer'} 
}
)

require('lspconfig').lua_ls.setup{}
