return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function ()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.ansiblelint,
          null_ls.builtins.diagnostics.hadolint, -- dockerfile
          null_ls.builtins.diagnostics.ruff, -- python
          null_ls.builtins.diagnostics.shellcheck, -- shell script
          null_ls.builtins.diagnostics.standardjs,
          null_ls.builtins.diagnostics.yamllint,

          null_ls.builtins.formatting.ruff,
          null_ls.builtins.formatting.standardjs,
        }
      })
    end
  }
}
