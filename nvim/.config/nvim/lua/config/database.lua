-- lua/config/database.lua

-- Load .env file
local env_file = vim.fn.stdpath("config") .. "/.env"
if vim.fn.filereadable(env_file) == 1 then
  for line in io.lines(env_file) do
    if not line:match("^%s*#") and line:match("%S") then
      local key, value = line:match("^([^=]+)=(.+)$")
      if key and value then
        -- Trim whitespace
        key = key:match("^%s*(.-)%s*$")
        value = value:match("^%s*(.-)%s*$")
        vim.fn.setenv(key, value)
      end
    end
  end
end

-- Setup databases
local dbs = {}

local db_nexus = vim.fn.getenv("DB_NEXUS")
if db_nexus ~= vim.NIL and db_nexus ~= "" then
  table.insert(dbs, { name = "nexus", url = db_nexus })
end

-- Add more databases here as needed
-- local db_prod = vim.fn.getenv("DB_PROD")
-- if db_prod ~= vim.NIL and db_prod ~= "" then
--   table.insert(dbs, { name = "prod", url = db_prod })
-- end

vim.g.dbs = dbs