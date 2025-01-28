return {
  'chipsenkbeil/org-roam.nvim',
  tag = '0.1.1',
  dependencies = {
    {
      'nvim-orgmode/orgmode',
      tag = '0.3.7',
    },
  },
  config = function()
    require('org-roam').setup {
      directory = '~/Notes/',
      -- optional
      org_files = {
        '~/Notes/daily/',
        -- '~/some/folder/*.org',
        -- '~/a/single/org_file.org',
      },
    }
  end,
}
