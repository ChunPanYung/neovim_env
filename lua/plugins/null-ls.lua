return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- shell script
          nls.builtins.diagnostics.shellcheck,
          nls.builtins.formatting.shfmt,

          nls.builtins.diagnostics.hadolint, -- dockerfile
          nls.builtins.diagnostics.standardjs,
          nls.builtins.diagnostics.yamllint,

          -- python
          nls.builtins.formatting.black,
          nls.builtins.formatting.ruff,

          nls.builtins.formatting.stylua, -- lua formatting
        },
      }
    end,
  }
}
