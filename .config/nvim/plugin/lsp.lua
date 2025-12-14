vim.lsp.config(
  "*",
  ---@type vim.lsp.Config
  {
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  }
)

vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
        -- local telescopeBuiltins = require("telescope.builtin")
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
				-- vim.keymap.set('n', 'gr', telescopeBuiltins.lsp_references, opts)
				vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
				vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts)
			end,
		})

vim.lsp.enable({ 'lua_ls', 'gopls', 'ts_ls' })
