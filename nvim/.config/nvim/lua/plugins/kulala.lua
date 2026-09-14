return {
  {
    "mistweaverco/kulala.nvim",
    ft = { "http", "rest" },
    init = function()
      vim.filetype.add({
        extension = {
          http = "http",
          rest = "rest",
        },
      })
    end,
    keys = {
      {
        "<leader>rr",
        function()
          require("kulala").run()
        end,
        ft = { "http", "rest" },
        desc = "Run HTTP request",
      },
      {
        "<leader>ra",
        function()
          require("kulala").run_all()
        end,
        ft = { "http", "rest" },
        desc = "Run all HTTP requests",
      },
      {
        "<leader>rl",
        function()
          require("kulala").replay()
        end,
        ft = { "http", "rest" },
        desc = "Replay last HTTP request",
      },
      {
        "<leader>rb",
        function()
          require("kulala").scratchpad()
        end,
        ft = { "http", "rest" },
        desc = "Open HTTP scratchpad",
      },
    },
    opts = {
      kulala_core = {
        download_tool = "curl",
      },
      treesitter = {
        enable = true,
        cli_path = "tree-sitter",
      },
      lsp = {
        enable = true,
        filetypes = { "http", "rest" },
        enforce_external_script_naming_convention = true,
        keymaps = false,
      },
      global_keymaps = false,
    },
  },
}
