local c = require("molokai.colors")

return {
    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.purple }, -- (preferred) any constant
    String = { fg = c.yellow }, -- a string constant: "this is a string"
    Character = { fg = c.yellow }, --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.fg }, -- (preferred) any variable name
    Function = { fg = c.green }, -- function name (also: methods for classes)

    Statement = { fg = c.red }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.
    Operator = { fg = c.red }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.red }, --  any other keyword
    Exception = { fg = c.red }, --  try, catch, throw

    PreProc = { fg = c.red }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --  preprocessor #define
    -- Macro         = { }, --  same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.cyan, style = "italic" }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special = { fg = c.blue1 }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements
}
