-- lua/plugins/comment.lua
return {
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("Comment").setup({
        -- LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
          line = "gc",  -- Line comment
          block = "gb", -- Block comment
        },
        -- LHS of extra mappings
        extra = {
          above = "gcO",  -- Add comment on the line above
          below = "gco",  -- Add comment on the line below
          eol = "gcA",    -- Add comment at the end of line
        },
      })
    end
  }
}
