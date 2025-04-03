return {
  on_attach = on_attach,
  cmd = { 'rust-analyzer'},
  filetypes = { 'rust' },
  settings = {
    ['rust-analyzer'] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true,
      },
    },
  }
}
