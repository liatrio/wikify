--[[
      File:  witdot.lua
--]]

local toolList = "\nTools: "
local toolPaths = {}
local toolAbout = {}
local toolDocs = {}
local toolTutorials = {}
local tools = {}

-- Assign tool names to the tools table
local function inputToolNames()
  for line in io.lines("tools.list") do
    table.insert(tools, line)
  end
end

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

-- Create the path to each tool file
local function makePaths()
  for i,v in ipairs(tools) do
    toolPaths[i] = "tools/"..v..".tool"
  end
end

-- Read the .tool about each tool containing information About/Docs/Tutorials
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
  end
end

-- call readTxt() on each tool's path
local function readAllTxt()
  for i,v in ipairs(toolPaths) do
    readTxt(i, v)
  end
end

-- Print the About, Docs, and Tutorials section of a given tool
local function printADT(tool, limitation)
  for i,v in ipairs(tools) do
    if (tool == "list") then
      print("("..i..") "..v)
    elseif (v == tool) then
      if (limitation == nil) then
        print("\n{{"..v.."}}")
        print("\n------About------\n"..toolAbout[i])
        print("------Docs-------\n"..toolDocs[i])
        print("------Tutorials--\n"..toolTutorials[i])
      elseif (limitation == "about") then
        print("\n{{"..v.."}}")
        print("\n------About------\n"..toolAbout[i])
      elseif (limitation == "docs") then
        print("\n{{"..v.."}}")
        print("\n------Docs-------\n"..toolDocs[i])
      elseif (limitation == "tutorials") then
        print("\n{{"..v.."}}")
        print("\n------Tutorials--\n"..toolTutorials[i])
      end
      return
    end
  end
end

-- Initialize functionality of witdot
local function initialize()
  os.execute("./update.sh")
  inputToolNames()
  assignToolValues()
  initializeToolProperties()
  createToolList()
  makePaths()
  readAllTxt()
end

initialize()

local argparse = require "argparse"

local parser = argparse("witdot", "Get DevOps tool information quickly.")

parser:argument("tool", "Tool to obtain information about")
  :args "0-1"

parser:flag("-l --list", "List all Tools")
parser:mutex(
  parser:flag("-a --about", "Limit to About only"),
  parser:flag("-d --docs", "Limit to Docs only"),
  parser:flag("-t --tutorials", "Limit to Tutorials only")
  )

local args = parser:parse()

if (args.list) then
  printADT("list")
end

if (args["tool"] ~= nil) then
  if (args.about) then
    printADT(args["tool"], "about")
  elseif (args.docs) then
    printADT(args["tool"], "docs")
  elseif (args.tutorials) then
    printADT(args["tool"], "tutorials")
  else
    printADT(args["tool"], nil)
  end
end
