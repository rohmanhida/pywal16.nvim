local M = {}

M.highlights_base = function(colors)
  return {
    Boolean = { fg = colors.color3 }, -- constant.language.boolean
    Character = { fg = colors.color2 }, -- strings
    CmpDocumentationBorder = { fg = colors.foreground, bg = colors.transparent },
    CmpItemAbbr = { fg = colors.foreground, bg = colors.transparent },
    CmpItemAbbrDeprecated = { fg = colors.color8, bg = colors.transparent },
    CmpItemAbbrMatch = { fg = colors.color4, bg = colors.transparent },
    CmpItemAbbrMatchFuzzy = { fg = colors.color4, bg = colors.transparent },
    CmpItemKind = { fg = colors.color5, bg = colors.transparent },
    CmpItemMenu = { fg = colors.color8, bg = colors.transparent },
    ColorColumn = { bg = colors.background },
    Comment = { fg = colors.color8, italic = true }, -- comments
    Conceal = { fg = colors.color5, bg = colors.transparent },
    Conditional = { fg = colors.color5 }, -- keywords
    Constant = { fg = colors.color3 }, -- constants
    Cursor = { fg = colors.foreground, bg = colors.cursor },
    CursorColumn = { bg = colors.transparent },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    CursorLine = { bg = colors.transparent },
    CursorLineNr = { fg = colors.color4 },
    Debug = { fg = colors.color1 },
    Define = { fg = colors.color5 },
    Delimiter = { fg = colors.color8 }, -- punctuation
    DiffAdd = { fg = colors.foreground, bg = colors.color2 },
    DiffChange = { fg = colors.transparent, bg = colors.color8 },
    DiffDelete = { fg = colors.foreground, bg = colors.color1 },
    DiffText = { fg = colors.foreground, bg = colors.color1 },
    Directory = { fg = colors.color5 },
    EndOfBuffer = { fg = colors.background, bg = colors.transparent },
    Error = { fg = colors.color1, bg = colors.transparent },
    ErrorMsg = { fg = colors.color1, bg = colors.transparent },
    Exception = { fg = colors.color5 },
    Float = { fg = colors.color3 }, -- constant.numeric
    FloatBorder = { fg = colors.foreground, bg = colors.transparent },
    FoldColumn = { fg = colors.color5, bg = colors.transparent },
    Folded = { fg = colors.color5, bg = colors.transparent },
    Function = { fg = colors.color4, italic = true }, -- entity.name.function
    Identifier = { fg = colors.foreground }, -- basic text & variable names
    Ignore = { fg = colors.color8, bg = colors.transparent },
    IncSearch = { fg = colors.foreground, bg = colors.color4 },
    Include = { fg = colors.color5 },
    Keyword = { fg = colors.color5 }, -- keywords
    Label = { fg = colors.color5 },
    LineNr = { fg = colors.color8, bg = colors.transparent },
    Macro = { fg = colors.color5 },
    MatchParen = { fg = colors.color5, bg = colors.transparent },
    ModeMsg = { fg = colors.foreground, bg = colors.transparent },
    MoreMsg = { fg = colors.color3 },
    MsgArea = { fg = colors.foreground, bg = colors.transparent },
    MsgSeparator = { fg = colors.color8, bg = colors.transparent },
    NonText = { fg = colors.background },
    Normal = { fg = colors.foreground, bg = colors.transparent },
    NormalFloat = { fg = colors.foreground, bg = colors.background },
    NormalNC = { fg = colors.foreground, bg = colors.transparent },
    Number = { fg = colors.color3 }, -- constant.numeric
    Operator = { fg = colors.color6 }, -- punctuation operators
    Pmenu = { fg = colors.foreground, bg = colors.transparent },
    PmenuSbar = { bg = colors.transparent },
    PmenuSel = { fg = colors.transparent, bg = colors.color8 },
    PmenuThumb = { bg = colors.color8 },
    PreCondit = { fg = colors.color5 },
    PreProc = { fg = colors.color5 },
    Question = { fg = colors.color3 },
    QuickFixLine = { bg = colors.color8 },
    Repeat = { fg = colors.color5 },
    Search = { fg = colors.foreground, bg = colors.color8 },
    SignColumn = { fg = colors.transparent, bg = colors.transparent },
    Special = { fg = colors.color5 },
    SpecialChar = { fg = colors.color13 }, -- constant.character.escape
    SpecialComment = { fg = colors.color8 },
    SpecialKey = { fg = colors.color5 },
    SpellBad = { fg = colors.color1 },
    SpellCap = { fg = colors.color5 },
    SpellLocal = { fg = colors.color5 },
    SpellRare = { fg = colors.color5 },
    Statement = { fg = colors.color5 },
    StatusLine = { fg = colors.transparent, bg = colors.transparent },
    StatusLineNC = { fg = colors.transparent, bg = colors.transparent },
    StorageClass = { fg = colors.color5 },
    String = { fg = colors.color2 }, -- strings
    Structure = { fg = colors.color5 },
    Substitute = { fg = colors.color1, bg = colors.color5 },
    Tag = { fg = colors.color5 },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Title = { fg = colors.color5 },
    Todo = { fg = colors.color1, bg = colors.transparent },
    Type = { fg = colors.color11, italic = true }, -- types
    Typedef = { fg = colors.color5 },
    Variable = { fg = colors.foreground },
    VertSplit = { fg = colors.color8, bg = colors.transparent },
    Visual = { fg = colors.foreground, bg = colors.color8 },
    VisualNOS = { bg = colors.transparent },
    WarningMsg = { fg = colors.color6, bg = colors.transparent },
    Whitespace = { fg = colors.color8, bg = colors.background },
    WildMenu = { fg = colors.color8, bg = colors.color5 },
    WinBar = { bg = colors.transparent },
    WinBarNC = { bg = colors.transparent },
    WinSeparator = { fg = colors.color8, bg = colors.transparent },
    healthError = { fg = colors.color1 },
    healthSuccess = { fg = colors.color2 },
    healthWarning = { fg = colors.color3 },
    lCursor = { fg = colors.foreground, bg = colors.cursor },

    -- BetterWhitespace
    ExtraWhitespace = { fg = colors.color8, bg = colors.background },

    -- BufferLine
    BufferLineFill = { bg = colors.transparent },
    BufferLineIndicatorSelected = { fg = colors.color5 },

    -- diagnostics
    DiagnosticError = { fg = colors.color1 },
    DiagnosticHint = { fg = colors.color8 },
    DiagnosticInfo = { fg = colors.color4 },
    DiagnosticWarn = { fg = colors.color6 },
    DiagnosticUnderlineError = { undercurl = true, fg = colors.color1 },
    DiagnosticUnderlineHint = { undercurl = true, fg = colors.color8 },
    DiagnosticUnderlineInfo = { undercurl = true, fg = colors.color4 },
    DiagnosticUnderlineWarn = { undercurl = true, fg = colors.color6 },

    -- diff
    diffAdded = { fg = colors.color2 },
    diffChanged = { fg = colors.color6 },
    diffFile = { fg = colors.color8 },
    diffIndexLine = { fg = colors.color5 },
    diffLine = { fg = colors.color1 },
    diffNewFile = { fg = colors.color5 },
    diffOldFile = { fg = colors.color3 },
    diffRemoved = { fg = colors.color1 },

    -- GitGutter
    GitGutterAdd = { fg = colors.color2 },
    GitGutterChange = { fg = colors.color6 },
    GitGutterDelete = { fg = colors.color1 },

    -- GitSigns
    GitSignsAdd = { fg = colors.color2 },
    GitSignsChange = { fg = colors.color6 },
    GitSignsCurrentLineBlame = { fg = colors.color8, bg = colors.transparent },
    GitSignsDelete = { fg = colors.color1 },

    -- Illuminate
    illuminatedCurWord = { bg = colors.color8 },
    illuminatedWord = { bg = colors.color8 },

    -- Indent Blank Line
    IblIndent = { fg = colors.color8, bg = colors.transparent },
    IblScope = { fg = colors.color8, bg = colors.transparent },

    -- LspSaga
    DefinitionCount = { fg = colors.color5 },
    DefinitionIcon = { fg = colors.color8 },
    LspFloatWinBorder = { fg = colors.foreground },
    LspFloatWinNormal = { bg = colors.transparent },
    LspSagaBorderTitle = { fg = colors.color8 },
    LspSagaCodeActionBorder = { fg = colors.color8 },
    LspSagaCodeActionContent = { fg = colors.color5 },
    LspSagaCodeActionTitle = { fg = colors.color8 },
    LspSagaDefPreviewBorder = { fg = colors.color5 },
    LspSagaFinderSelection = { fg = colors.color1 },
    LspSagaHoverBorder = { fg = colors.color8 },
    LspSagaRenameBorder = { fg = colors.color5 },
    LspSagaSignatureHelpBorder = { fg = colors.color1 },
    ReferencesCount = { fg = colors.color5 },
    ReferencesIcon = { fg = colors.color8 },
    TargetWord = { fg = colors.color8 },

    -- LspTrouble
    LspTroubleCount = { fg = colors.color5, bg = colors.foreground },
    LspTroubleNormal = { fg = colors.foreground, bg = colors.transparent },
    LspTroubleText = { fg = colors.foreground },

    -- Neogit
    NeogitBranch = { fg = colors.color5 },
    NeogitDiffAddHighlight = { fg = colors.color2, bg = colors.color2 },
    NeogitDiffContextHighlight = { bg = colors.transparent, fg = colors.foreground },
    NeogitDiffDeleteHighlight = { fg = colors.color1, bg = colors.color1 },
    NeogitHunkHeader = { bg = colors.transparent, fg = colors.foreground },
    NeogitHunkHeaderHighlight = { bg = colors.foreground, fg = colors.color8 },
    NeogitRemote = { fg = colors.color5 },

    -- nvim-navic
    NavicIconsArray = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsBoolean = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsClass = { bg = colors.transparent, fg = colors.color11 },
    NavicIconsConstant = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsConstructor = { bg = colors.transparent, fg = colors.color1 },
    NavicIconsEnum = { bg = colors.transparent, fg = colors.color11 },
    NavicIconsEnumMember = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsEvent = { bg = colors.transparent, fg = colors.color1 },
    NavicIconsField = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsFile = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsFunction = { bg = colors.transparent, fg = colors.color4 },
    NavicIconsInterface = { bg = colors.transparent, fg = colors.color1 },
    NavicIconsKey = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsMethod = { bg = colors.transparent, fg = colors.color4 },
    NavicIconsModule = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsNamespace = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsNull = { bg = colors.transparent, fg = colors.color5 },
    NavicIconsNumber = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsObject = { bg = colors.transparent, fg = colors.color5 },
    NavicIconsOperator = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsPackage = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsProperty = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsString = { bg = colors.transparent, fg = colors.color2 },
    NavicIconsStruct = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsTypeParameter = { bg = colors.transparent, fg = colors.color1 },
    NavicIconsVariable = { bg = colors.transparent, fg = colors.foreground },
    NavicSeparator = { bg = colors.transparent, fg = colors.foreground },
    NavicText = { bg = colors.transparent, fg = colors.foreground },

    -- nvim-scrollbar
    ScrollbarCursorHandle = { bg = colors.color4 },
    ScrollbarHandle = { bg = colors.color8 },

    -- NvimTree
    NvimTreeFolderIcon = { fg = colors.color8, bg = colors.transparent },
    NvimTreeGitDeleted = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color3 },
    NvimTreeGitNew = { fg = colors.color2 },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeIndentMarker = { fg = colors.foreground },
    NvimTreeNormal = { fg = colors.foreground, bg = colors.transparent },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.transparent },
    NvimTreeRootFolder = { fg = colors.color5 },
    NvimTreeSpecialFile = { fg = colors.color5 },
    NvimTreeStatusLineNC = { bg = colors.transparent, fg = colors.transparent },
    NvimTreeSymlink = { fg = colors.color8 },

    -- Telescope
    TelescopeBorder = { fg = colors.color3, bg = colors.transparent },
    TelescopeNormal = { fg = colors.foreground, bg = colors.transparent },
    TelescopeSelection = { fg = colors.transparent, bg = colors.color8 },

    -- treesitter
    TSComment = { fg = colors.color8, italic = true },
    TSConstructor = { fg = colors.color5 },
    TSDanger = { fg = colors.transparent, bg = colors.color6 },
    TSNote = { fg = colors.transparent, bg = colors.color3 },
    TSWarning = { fg = colors.transparent, bg = colors.color3 },
    TSField = { fg = colors.color4 },
    TSKeyword = { fg = colors.color5 },
    TSKeywordFunction = { fg = colors.color5 },
    TSLabel = { fg = colors.color8 },
    TSOperator = { fg = colors.color6 },
    TSParameter = { fg = colors.color9, italic = true },
    TSProperty = { fg = colors.color5 },
    TSPunctDelimiter = { fg = colors.color8 },
    TSPunctBracket = { fg = colors.color8 },
    TSPunctSpecial = { fg = colors.color8 },
    TSStringRegex = { fg = colors.color8 },
    TSStringEscape = { fg = colors.color13 },
    TSVariableBuiltin = { fg = colors.color1 },
    TSTextReference = { fg = colors.color8 },
  }
end

return M
