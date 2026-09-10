vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.autoread = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.diagnostic.config({ virtual_text = true }) -- inline diagnostics

vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"
vim.opt.shortmess:append("c")

vim.opt.cmdheight = 0

vim.cmd [[autocmd FileType * set formatoptions-=ro]]

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    callback = function()
        vim.hl.on_yank()
    end
})

vim.cmd.colorscheme "retrobox"
vim.opt.termguicolors = true
local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

enable_transparency()




