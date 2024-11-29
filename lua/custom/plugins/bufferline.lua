return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        themable = true,
        diagnostics_update_on_event = true,
        separator_style = 'slope',
        always_show_bufferline = false,
      },
    }
  end,
}
