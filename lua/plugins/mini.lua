return {
	"nvim-mini/mini.nvim",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("mini.files").setup({
			mappings = {
				go_in = "<CR>",
				go_in_plus = "L",
				go_out = "_",
				go_out_plus = "H",
			}
		})


		vim.keymap.set("n", "-", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })
		vim.keymap.set("n", "<leader>-", function()
			MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
			MiniFiles.reveal_cwd()
		end, { desc = "Toggle into currently opened file"})

		require("mini.notify").setup({
			content = {
				format = function(notif)
					return notif.msg
				end,
			}
		})

		require("mini.cmdline").setup({
			autocorrect = { enable = false }
		})

		require("mini.surround").setup()
		--[[
		Default Keybinds
		`sa` add surroundings
		`sd` delete surroundings
		`sr` replace surroundings
		...
		--]]

		require("mini.pick").setup()
		vim.keymap.set("n", "<leader>ff", function()
			MiniPick.builtin.files()
		end, { desc = "Mini file picker" })
		vim.keymap.set("n", "<leader>fg", function()
			--MiniPick.builtin.grep({ pattern = vim.fn.expand("<cword>") })
			MiniPick.builtin.grep_live()
		end, { desc = "Mini word search (grep)" })
		vim.keymap.set("n", "<leader>fh", function()
			MiniPick.builtin.help()
		end, { desc = "mini help search" })

		require("mini.extra").setup()
		vim.keymap.set("n", "<leader>xx", function()
			MiniExtra.pickers.diagnostic()
		end, { desc = "Mini diagnostic picker" })
		vim.keymap.set("n", "<leader>pk", function()
			MiniExtra.pickers.keymaps()
		end, { desc = "Search keymaps" })

		require("mini.completion").setup({
			lsp_completion = {
				auto_setup = true,
				process_items = function(items, base)
					return MiniCompletion.default_process_items(items, base, {
						filtersort = "fuzzy",
					})
				end,
			}
		})

		local MiniSnippets = require("mini.snippets")
		MiniSnippets.setup({
			snippets = {
				MiniSnippets.gen_loader.from_lang(),
			},
			expand = {
				insert = function (snippet)
					MiniSnippets.default_insert(snippet, { empty_tabstop = "", empty_tabstop_final = "" })
				end
			}
		})
		MiniSnippets.start_lsp_server({ match = false })
	end
}



