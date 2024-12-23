return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    -- disable ui in favor of render-markdown.nvim
    ui = { enable = false },
    workspaces = {
      {
        name = 'Dev',
        path = '/Users/tylermiller/Library/Mobile Documents/iCloud~md~obsidian/Documents/Dev/',
      },
    },
    -- completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = 'telescope.nvim',
    },
  },
  -- Set keymaps after setup
  vim.keymap.set('n', '<leader>of', ':ObsidianSearch<CR>', { desc = 'Search files' }),
  vim.keymap.set('n', '<leader>os', ':ObsidianQuickSwitch<CR>', { desc = 'Quick switch' }),
  vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', { desc = 'New note' }),
  vim.keymap.set('n', '<leader>ol', ':ObsidianFollowLink<CR>', { desc = 'Follow link' }),
  vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<CR>', { desc = 'Show backlinks' }),
  vim.keymap.set('n', '<leader>ot', ':ObsidianTags<CR>', { desc = 'Browse tags' }),
}