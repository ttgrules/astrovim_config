return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function ()
      -- enable blamer by default if you're in a git repo
      vim.cmd "let g:blamer_enabled = 1"
    end
  },
  {
    'lukoshkin/trailing-whitespace',
    lazy = false,
    config = function ()
      require'trailing-whitespace'.setup {
        patterns = { '\\s\\+$' },
        palette = { markdown = 'RosyBrown' },
        default_color = 'PaleVioletRed',
      }
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = true,
          hide_gitignored = true,
        }
      }
    }
  }
}
