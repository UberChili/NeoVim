return {
  cmd = { 'ols' },
  filetypes = { 'odin' },
  enable_inlay_hints = true,
  enable_inlay_hints_params = true,
  enable_inlay_hints_default_params = true,
  init_options = {
    checker_args = '-strict-style',
    collections = {
      { name = 'shared', path = vim.fn.expand '$HOME/odin-lib' },
    },
  },
}
