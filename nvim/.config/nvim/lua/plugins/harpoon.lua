-- lua/plugins/harpoon.lua
return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local harpoon = require("harpoon")
      
      harpoon:setup({
        global_settings = {
          save_on_toggle = true,
          save_on_change = true,
        }
      })
      
      vim.keymap.set("n", "<C-h>", function() 
        harpoon.ui:toggle_quick_menu(harpoon:list()) 
      end, { desc = "Harpoon" })
      
      vim.keymap.set("n", "<leader>hh", function() 
        harpoon.ui:toggle_quick_menu(harpoon:list()) 
      end, { desc = "Harpoon" })
      
      vim.keymap.set("n", "<leader>ha", function() 
        harpoon:list():append() 
      end, { desc = "Add" })
      
      vim.keymap.set("n", "<leader>hn", function() 
        harpoon:list():next() 
      end, { desc = "Next" })
      
      vim.keymap.set("n", "<leader>hp", function() 
        harpoon:list():prev() 
      end, { desc = "Previous" })
    end
  }
}
