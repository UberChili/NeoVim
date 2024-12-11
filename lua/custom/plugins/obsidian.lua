return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = 'markdown',
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'Notes',
        path = '~/Notes',
      },
    },
    daily_notes = {
      -- Because we keep daily notes in a separate directory
      folder = '/Dailies',
    },
    -- Customizing frontmatter data
    ---@return table
    note_frontmatter_func = function(note)
      -- Add the title of the note as an alias.
      if note.title then
        note:add_alias(note.title)
      end

      local out = { aliases = note.aliases, tags = note.tags }

      -- 'note.metadata' contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,

    -- Optional, customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      local suffix = ''
      if title ~= nil then
        -- If title is given, transform it into valid file name
        -- suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        return tostring(title)
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. '-' .. suffix
    end,

    -- Open URLs in default browser
    ---@pagam url string
    follow_url_func = function(url)
      vim.fn.jobstart { 'xdg-open', url }
    end,

    --- Disable UI functionality to instead use render-markdown.nvim
    ui = { enable = false },
  },
}
