return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			vim.api.nvim_create_autocmd('FileType', {
				pattern = { 'typescript', 'javascript', 'javascript', 'go' },
				callback = function() vim.treesitter.start() end,
			})
		end
	}
}
