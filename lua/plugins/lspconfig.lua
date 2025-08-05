return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
    				"folke/lazydev.nvim",
    				ft = "lua", -- only load on lua files
    				opts = {
      					library = {
        					-- See the configuration section for more details
        					-- Load luvit types when the `vim.uv` word is found
        					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
      					},
    				},
  			},
		},
		config = function()
			vim.diagnostic.config {
			virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic)
            local diagnostic_message = {
              [vim.diagnostic.severity.ERROR] = diagnostic.message,
              [vim.diagnostic.severity.WARN] = diagnostic.message,
              [vim.diagnostic.severity.INFO] = diagnostic.message,
              [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
          		end,
       		 },
			}
		end,
	}
}
