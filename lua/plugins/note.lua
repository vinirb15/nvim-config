 return {
    'gsuuon/note.nvim',
    opts = {
      spaces = {
        '~',
      },
    },
    cmd = 'Note',
    ft = 'note',
    keys = {
      {'<leader>N', -- [t]elescope [n]ote
        function()
          require('telescope.builtin').live_grep({
            cwd = require('note.api').current_note_root()
          })
        end,
        mode = 'n'
      }
    }
  }
