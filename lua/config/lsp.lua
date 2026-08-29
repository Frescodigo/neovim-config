-- vim.lsp.config['clangd'] = {
-- 	cmd = { 'clangd' },
-- 	filetype = { 'c', 'h', },
-- }
vim.lsp.config['lua_ls'] = {
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			}
		}
	}
}

vim.cmd[[set completeopt+=menuone,noselect,popup]]

vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { silent = true })





