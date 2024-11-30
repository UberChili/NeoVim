return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        themable = true,
        diagnostics_update_on_event = true,
        separator_style = 'slant',
        always_show_bufferline = false,
        close_command = 'bdelete! %d',
      },
    }
  end,
}
