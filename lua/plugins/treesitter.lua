return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install({
        'c',
        'html',
        'css',
        'javascript',
        'go',
        'rust'
      })
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    lazy = false,
    config = function()
      require('nvim-ts-autotag').setup({})
    end,
  }
}
