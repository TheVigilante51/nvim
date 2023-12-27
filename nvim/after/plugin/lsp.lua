-- ---------------------------------------------------------------
local lsp_zero = require('lsp-zero')
lsp_zero.preset("recommended")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').clangd.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').html.setup({})
require('lspconfig').pylsp.setup({})

lsp_zero.setup()
lsp_zero.setup_servers({'clangd', 'html' , 'pylsp' , 'rust_analyzer'})

-- ---------------------------------------------------------------

require('lspconfig').clangd.setup{
	on_attach = function()
		print("Hello C/C++")
	end

}
