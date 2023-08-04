return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.diagnostics.hadolint, -- dockerfile
          nls.builtins.diagnostics.shellcheck, -- shell script
          nls.builtins.diagnostics.standardjs,
          nls.builtins.diagnostics.yamllint,

          nls.builtins.formatting.black,
          nls.builtins.formatting.ruff,
          nls.builtins.formatting.standardjs,

          nls.builtins.formatting.stylua, -- lua formatting
          nls.builtins.formatting.shfmt,
        },
      }
    end,
  }
}
