return {
  -- changing few settings mostly for hidden files
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_hidden = false,
          hide_gitignored = false,
          visible = true,
        },
      },
    },
  },
  -- disabling no info message
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      -- enabling border for hovers
      opts.presets.lsp_doc_border = true
    end,
  },
  -- settings timeout for notifications
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
  -- custom logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
███╗   ███╗██╗  ██╗██████╗ ██████╗  ██████╗ ██╗  ██╗        
████╗ ████║██║  ██║██╔══██╗██╔══██╗██╔═████╗╚██╗██╔╝        
██╔████╔██║███████║██║  ██║██║  ██║██║██╔██║ ╚███╔╝         
██║╚██╔╝██║╚════██║██║  ██║██║  ██║████╔╝██║ ██╔██╗         
██║ ╚═╝ ██║     ██║██████╔╝██████╔╝╚██████╔╝██╔╝ ██╗███████╗
╚═╝     ╚═╝     ╚═╝╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝
     ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
