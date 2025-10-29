-- lua/plugins/whichkey.lua
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      
      wk.setup({
        plugins = {
          spelling = {
            enabled = true,
          },
        },
        icons = {
          breadcrumb = "»",
          separator = "➜",
          group = "+",
        },
      })
      
      -- Register all keymaps
      wk.add({
        -- Find group (Telescope)
        { "<leader>f", group = "Find" },
        { "<leader>ff", desc = "Find Files" },
        { "<leader>fg", desc = "Live Grep" },
        { "<leader>fb", desc = "Buffers" },
        { "<leader>fh", desc = "Help Tags" },

        -- Git group
        { "<leader>g", group = "Git" },
        { "<leader>gs", desc = "Status" },
        { "<leader>gc", desc = "Commit" },
        { "<leader>gp", desc = "Push" },
        { "<leader>gl", desc = "Pull" },
        { "<leader>gb", desc = "Blame" },
        { "<leader>gd", desc = "Diff Split" },
        { "<leader>gw", desc = "Write (stage)" },
        { "<leader>gr", desc = "Read (checkout)" },
        { "<leader>gv", desc = "Diffview Open" },
        { "<leader>gV", desc = "Diffview Close" },
        { "<leader>gh", desc = "File History" },
        { "<leader>gH", desc = "Current File History" },

        -- Harpoon group
        { "<leader>h", group = "Harpoon" },
        { "<leader>hh", desc = "Toggle Menu" },
        { "<leader>ha", desc = "Add File" },
        { "<leader>hn", desc = "Next File" },
        { "<leader>hp", desc = "Previous File" },
        { "<leader>hs", desc = "Stage Hunk" },
        { "<leader>hr", desc = "Reset Hunk" },
        { "<leader>hp", desc = "Preview Hunk" },
        { "<leader>hb", desc = "Blame Line" },

        -- Terminal group
        { "<leader>t", group = "Terminal" },
        { "<leader>th", desc = "Horizontal" },
        { "<leader>tv", desc = "Vertical" },
        { "<leader>tf", desc = "Floating" },
        { "<leader>tg", desc = "Lazygit" },

        -- Debug group
        { "<leader>d", group = "Debug/Database" },
        { "<leader>db", desc = "Toggle Breakpoint / Database UI" },
        { "<leader>dB", desc = "Conditional Breakpoint" },
        { "<leader>dc", desc = "Continue" },
        { "<leader>dC", desc = "Run to Cursor" },
        { "<leader>df", desc = "Find Database Buffer" },
        { "<leader>dg", desc = "Go to Line" },
        { "<leader>di", desc = "Step Into" },
        { "<leader>dj", desc = "Down" },
        { "<leader>dk", desc = "Up" },
        { "<leader>dl", desc = "Run Last / Last Query Info" },
        { "<leader>do", desc = "Step Out" },
        { "<leader>dO", desc = "Step Over" },
        { "<leader>dp", desc = "Pause" },
        { "<leader>dr", desc = "Toggle REPL / Rename Buffer" },
        { "<leader>ds", desc = "Session" },
        { "<leader>dt", desc = "Terminate" },
        { "<leader>dw", desc = "Widgets" },
        { "<leader>du", desc = "Toggle UI" },

        -- Explorer group
        { "<leader>e", group = "Explorer" },
        { "<leader>e", desc = "Toggle Explorer" },
        { "<leader>ef", desc = "Find in Explorer" },

        -- Code/LSP group
        { "<leader>c", group = "Code" },
        { "<leader>ca", desc = "Code Action" },
        { "<leader>cs", desc = "Symbols (Trouble)" },
        { "<leader>cl", desc = "LSP Definitions/References" },

        -- Diagnostics/Trouble group
        { "<leader>x", group = "Diagnostics" },
        { "<leader>xx", desc = "Diagnostics (Trouble)" },
        { "<leader>xX", desc = "Buffer Diagnostics" },
        { "<leader>xL", desc = "Location List" },
        { "<leader>xQ", desc = "Quickfix List" },
        { "<leader>xt", desc = "Todo (Trouble)" },
        { "<leader>xT", desc = "Todo/Fix/Fixme" },

        -- Search group
        { "<leader>s", group = "Search" },
        { "<leader>st", desc = "Search Todos" },

        -- Buffer group
        { "<leader>b", group = "Buffer" },
        { "<leader>bp", desc = "Pick Buffer" },
        { "<leader>bc", desc = "Pick Close" },

        -- Rename
        { "<leader>rn", desc = "Rename Symbol" },
        
        -- Format
        { "<leader>fm", desc = "Format" },

        -- Zen mode
        { "<leader>zm", desc = "Zen Mode" },

        -- LSP non-leader keymaps
        { "gd", desc = "Go to Definition" },
        { "gD", desc = "Go to Declaration" },
        { "gr", desc = "References" },
        { "gi", desc = "Go to Implementation" },
        { "K", desc = "Hover Documentation" },
        
        -- Diagnostics navigation
        { "[d", desc = "Previous Diagnostic" },
        { "]d", desc = "Next Diagnostic" },
        { "<leader>d", desc = "Show Diagnostic" },
        
        -- Todo navigation
        { "[t", desc = "Previous Todo" },
        { "]t", desc = "Next Todo" },
        
        -- Git hunk navigation
        { "[c", desc = "Previous Git Hunk" },
        { "]c", desc = "Next Git Hunk" },

        -- Flash
        { "s", desc = "Flash Jump", mode = { "n", "x", "o" } },
        { "S", desc = "Flash Treesitter", mode = { "n", "x", "o" } },

        -- Buffer navigation
        { "<Tab>", desc = "Next Buffer" },
        { "<S-Tab>", desc = "Previous Buffer" },

        -- Window navigation (tmux-navigator)
        { "<C-h>", desc = "Navigate Left" },
        { "<C-j>", desc = "Navigate Down" },
        { "<C-k>", desc = "Navigate Up" },
        { "<C-l>", desc = "Navigate Right" },

        -- Terminal toggle
        { "<C-\\>", desc = "Toggle Terminal" },

        -- Comment (these work automatically via Comment.nvim)
        { "gcc", desc = "Toggle Line Comment", mode = "n" },
        { "gc", desc = "Toggle Comment", mode = { "n", "v" } },
        { "gbc", desc = "Toggle Block Comment", mode = "n" },
        { "gb", desc = "Toggle Block Comment", mode = { "n", "v" } },

        -- Surround (these work via nvim-surround)
        { "ys", desc = "Surround Add", mode = "n" },
        { "cs", desc = "Surround Change", mode = "n" },
        { "ds", desc = "Surround Delete", mode = "n" },
        { "S", desc = "Surround", mode = "v" },
      })
    end
  }
}
