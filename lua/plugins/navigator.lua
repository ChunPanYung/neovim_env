return {
  {
    'ray-x/navigator.lua',
    enabled = false,
    dependencies = {
      { 'ray-x/guihua.lua',             build = 'cd lua/fzy && make' },
      { 'neovim/nvim-lspconfig' },
      { 'nvim-telescope/telescope.nvim' }
    },
    config = true
  },
}
