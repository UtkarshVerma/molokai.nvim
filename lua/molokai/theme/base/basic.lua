local M = {}

---@param theme Theme
---@return Highlights
function M.setup(theme)
    local cfg = theme.config
    local c = theme.colors
    local bg = cfg.transparent and c.none or c.bg

    return {
        ColorColumn  = { bg = c.bg_gray2 }, -- used for the columns set with 'colorcolumn'
        Conceal      = { fg = c.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor       = { fg = c.bg, bg = c.fg }, -- character under the cursor
        lCursor      = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM     = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = c.bg_cursorline }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   = { bg = c.bg_cursorline }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory    = { fg = c.blue }, -- directory names (and other special names in listings)
        DiffAdd      = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
        DiffChange   = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
        DiffDelete   = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
        DiffText     = { fg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer  = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor  = { }, -- cursor in a focused terminal
        -- TermCursorNC= { }, -- cursor in an unfocused terminal
        ErrorMsg     = { fg = c.error }, -- error messages on the command line
        VertSplit    = { fg = c.border }, -- the column separating vertically split windows
        Folded       = { fg = c.fg_alt, bg = c.bg_gray2 }, -- line used for closed folds
        FoldColumn   = { fg = c.comment, bg = c.bg }, -- 'foldcolumn'
        SignColumn   = { bg = bg }, -- column where |signs| are displayed
        SignColumnSB = { fg = c.fg, bg = bg }, -- column where |signs| are displayed
        Substitute   = { fg = c.bg, bg = c.red }, -- |:substitute| replacement text highlighting
        LineNr       = { fg = c.bg_gray5 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.gray, style = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   = { fg = c.bg, style = "bold", bg = c.orange }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg = { fg = c.fg_dark, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
        -- -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg      = { fg = c.blue }, -- |more-prompt|
        NonText      = { fg = c.bg_gray5 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal       = { fg = c.fg, bg = bg }, -- normal text
        NormalNC     = { fg = c.fg, bg = bg }, -- normal text in non-current windows
        NormalSB     = { fg = c.fg, bg = c.bg_float }, -- normal text in sidebars
        NormalFloat  = { fg = c.fg, bg = c.bg_float }, -- Normal text in floating windows.
        FloatBorder  = { fg = c.border_highlight, bg = c.bg_float },
        Pmenu        = { fg = c.fg, bg = c.bg_popup }, -- Popup menu: normal item.
        PmenuSel     = { bg = c.bg_visual }, -- Popup menu: selected item.
        PmenuSbar    = { bg = c.bg_highlight }, -- Popup menu: scrollbar.
        PmenuThumb   = { bg = c.bg_visual }, -- Popup menu: Thumb of the scrollbar.
        -- Question     = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine = { bg = c.bg_highlight, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search       = { fg = c.fg, bg = c.bg_highlight }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        -- IncSearch = { fg = c.black, bg = c.orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- SpecialKey = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad     = { sp = c.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap     = { sp = c.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal   = { sp = c.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare    = { sp = c.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        -- StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
        -- StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        -- TabLine = { fg = c.fg_gutter, bg = c.bg_statusline }, -- tab pages line, not active tab page label
        -- TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
        -- TabLineSel = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
        Title        = { fg = c.green, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
        Label        = { fg = c.fg }, -- For labels: `label:` in C and `:label:` in Lua.
        Visual       = { bg = c.bg_visual }, -- Visual mode selection
        VisualNOS    = { bg = c.bg_highlight }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg   = { fg = c.warning }, -- warning messages
        -- Whitespace = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu     = { bg = c.bg_highlight }, -- current match in 'wildmenu' completion

        Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { fg = c.error }, -- (preferred) any erroneous construct
        Todo = { fg = c.warning }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- qfLineNr = { fg = c.dark5 },
        -- qfFileName = { fg = c.blue },

        -- debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
        -- debugBreakpoint = { fg = c.info, bg = util.darken(c.info, 0.1) }, -- used for breakpoint colors in terminal-debug
    }
end

return M
