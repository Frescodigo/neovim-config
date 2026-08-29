vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "clears highlights from searches", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves line up while in visual mode"} )
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves line up while in visual mode"} )

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replaces all instances of the word under the cursor" })

vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })


