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
      {'<leader>Nn', '<cmd>Note<CR>', desc = 'Open daily note'},
      {'<leader>Ni', '<cmd>NoteIndex<CR>', desc = 'Open note index'},
      {'<leader>NS',
        function()
          require('telescope.builtin').live_grep({
            cwd = require('note.api').current_note_root()
          })
        end,
        desc = 'Search notes'
      },
      {'<leader>Nr', '<cmd>NoteReport<CR>', desc = 'Note report', ft = 'note'},
      {'<leader>Nc', '<cmd>NoteCurrentItem<CR>', desc = 'Jump to current item', ft = 'note'},
      {'<leader>Nt', '<cmd>NoteTime<CR>', desc = 'Insert timestamp', ft = 'note'},
      {'<leader>Nl', '<cmd>NoteGoLink<CR>', desc = 'Follow link', ft = 'note'},
      {'<leader>Nd', '<cmd>NoteTaskDone<CR>', desc = 'Note task done', ft = 'note'},
      {'<leader>Ns', '<cmd>NoteTaskStart<CR>', desc = 'Note task start', ft = 'note'},
    }
  }
