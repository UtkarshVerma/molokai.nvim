local c = require("molokai.colors")

return {
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    TSNote            = { fg = c.bg, bg = c.info },
    TSWarning         = { fg = c.bg, bg = c.warning },
    TSDanger          = { fg = c.bg, bg = c.error },
    -- TSConstructor       = { },    -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    -- TSField             = { };    -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    TSFuncBuiltin     = { fg = c.orange }, -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro       = { fg = c.green }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword           = { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction   = { },    -- For keywords used to define a fuction.
    TSLabel           = { fg = c.fg }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { },    -- For method calls and definitions.
    TSMethodCall      = { fg = c.cyan },
    TSNamespace       = { fg = c.green, style = "underline" }, -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    TSNumber          = { fg = c.purple }, -- For all numbers
    TSOperator        = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter       = { fg = c.orange }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty        = { fg = c.green1 }, -- Same as `TSField`.
    TSPunctDelimiter  = { fg = c.fg }, -- For delimiters ie: `.`
    -- TSPunctBracket      = { },    -- For brackets and parens.
    TSPunctSpecial    = { fg = c.blue5 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    TSString          = { fg = c.yellow }, -- For strings.
    TSStringRegex     = { fg = c.blue6 }, -- For regexes.
    TSStringEscape    = { fg = c.purple }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    -- TSVariable          = { };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = c.teal },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.
}
