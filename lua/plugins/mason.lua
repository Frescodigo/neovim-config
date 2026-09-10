return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		},
		config = function()
			require('mason').setup()
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
		},
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = {
					"clangd",
					"ts_ls",
					"html",
					"gopls",
				},
			})
            handlers = {
                clangd = function()
                    cmd = {
                        "clangd",
                        "--header-insertion=never"
                    }
                end
            }
		end
	}
}
