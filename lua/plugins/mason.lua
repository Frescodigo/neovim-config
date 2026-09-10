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
                clangd = function()
                    require('lspconfig').clangd.setup({
                        cmd = {
                            "clangd",
                            "--background-index",
                            "--header-insertion=never"
                        }
                    })
                end
			})
		end
	}
}
