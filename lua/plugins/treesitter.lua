return {
  { -- nvim-treesitter, syntax highlight for Neovim
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = "BufReadPost",
    opts = {
      sync_install = false,
      auto_install = true,
      ensure_installed = {
        'bash',
        'rust',
        'lua',
        'python',
        'markdown',
        'go',
        'toml',
        -- Web development
        'html',
        'css',
        'typescript',
        'javascript',
        'json',
        -- IaC
        'dockerfile',
        'hcl',
        'yaml',
      },
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  }
}
