--[[
      File:  dogist.lua
--]]

local toolList = "\nTools: "
local toolPaths = {}
local toolAbout = {}
local toolDocs = {}
local toolTutorials = {}
local tools = {
  "docker",
  "dogist"
}

-- Assign indices to the tools table
local function assignToolValues()
  for i, v in ipairs(tools) do
    tools[v] = i
  end
end

-- Initialize the tool properties to empty strings
local function initializeToolProperties()
  for i, v in ipairs(tools) do
    toolAbout[i] = ""
    toolDocs[i] = ""
    toolTutorials[i] = ""
  end
end

-- Create a legible list of tools to be included in the help text
local function createToolList()
  -- Iterate over every value in the tools table
  for i,v in ipairs(tools) do
    -- If the index is a multiple of 3, proceed to the next line
    if(i % 3 == 0) then
      -- Concatenate the value in tools into the toolList string
      toolList = toolList .. v .. "\n"
    else
      toolList = toolList .. v .. " "
    end
  end
end

-- Create the path to each txt file
local function makePaths()
  for i,v in ipairs(tools) do
    toolPaths[i] = "txt/"..v..".txt"
  end
end

-- Read the txt about each tool containing information About/Docs/Tutorials
local function readTxt(i, path)
  -- sections: 0/about 1/docs 2/tutorials
  local section = 0
  for line in io.lines(path) do
    if (line == "about") then
      -- skip the first line
    elseif (line == "docs") then
      section = section + 1
    elseif (line == "tutorials") then
      section = section + 1
    else
      if (section == 0) then
        toolAbout[i] = toolAbout[i] .. line .. "\n"
      elseif (section == 1) then
        toolDocs[i] = toolDocs[i] .. line .. "\n"
      else
        toolTutorials[i] = toolTutorials[i] .. line .. "\n"
      end
    end
    --for v in line:gmatch("([^"..','.."]+)") do
    --  grid[r][c].background = tonumber(v)
    --  c = c + 1
    --end
    --r = r + 1
    --c = 0
  end
end

-- call readTxt() on each tool's path
local function readAllTxt()
  for i,v in ipairs(toolPaths) do
    readTxt(i, v)
  end
end

-- Print debug information
local function debug()
  for i,v in ipairs(tools) do
    print("------------------------")
    print("tool:\t"..v)
    print("path:\t"..toolPaths[i])
    print("About:\n"..toolAbout[i])
    print("Docs:\n"..toolDocs[i])
    print("Tutorials:\n"..toolTutorials[i])
    print("------------------------")
  end
end

assignToolValues()
initializeToolProperties()
createToolList()
makePaths()
readAllTxt()
--debug()

--print(args)  -- Assuming print is patched to handle tables nicely.

local argparse = require "argparse"

local parser = argparse("dogist", "Easily get the gist of DevOps tools.")
parser:argument("tool", "Tool to get the gist of." .. toolList, "dogist")
parser:option("-a --about", "Limit gist to About only.")
parser:option("-d --docs", "Limit gist to Docs only.")
parser:option("-t --tutorials", "Limit gist to Tutorials only.")

local args = parser:parse()

