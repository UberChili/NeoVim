return {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--inlay-hints=true' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp' },
}
