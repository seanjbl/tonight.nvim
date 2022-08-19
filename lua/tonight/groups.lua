local c = require('tonight.colours')

local groups = {
    -- Treesitter slowly attempting to replace all the things
    TSBoolean = { fg = c.orange },
    TSCharacter = { fg = c.green },
    TSComment = { fg = c.gray },
    TSConstant = { fg = c.orange },
    TSConstructor = { fg = c.gray },
    TSConditional = { fg = c.magenta },
    TSField = { fg = c.red },
    TSFunction = { fg = c.blue },
    TSFuncBuiltin = { link = "TSFunction" },
    TSFunctionCall = { link = "TSFunction" },
    TSInclude = { fg = c.magenta },
    TSKeyword = { fg = c.magenta },
    TSKeywordFunction = { link = "TSKeyword" },
    TSMethod = { fg = c.blue },
    TSNumber = { fg = c.orange },
    TSOperator = { fg = c.magenta },
    TSParameter = { fg = c.blue },
    TSProperty = { fg = c.white },
    TSPunctBracket = { fg = c.white },
    TSPunctSpecial = { fg = c.red },
    TSPunctDelimiter = { link = "TSPunctSpecial" },
    TSRepeat = { fg = c.magenta },
    TSString = { fg = c.green },
    TSStringEscape = { link = "TSPunctSpecial" },
    TSStringRegex = { link = "TSPunctSpecial" },
    TSTitle = { fg = c.white, gui = "bold" },
    TSType = { fg = c.yellow },
	TSURI = { fg = c.blue },
    TSVariable = { fg = c.white },
    TSVariableBuiltin = { link = "TSVariable" },
    TSNamespace = { fg = c.blue },

    -- ColorColumn = { bg = c.gray },
    Comment = { link = "TSComment" },
	Constant = { link = "TSConstant" },
    Cursor = { bg = c.white },
    CursorLine = { bg = c.highlight },
    CursorLineNr = { link = "CursorLine" },
    EndOfBuffer = { fg = c.background },
    Error = { fg = c.red },
    ErrorMsg = { link = "Error" },
    -- FoldColumn = { fg = c.gray },
    -- Folded = { fg = c.gray },
    LineNr = { fg = c.gray },
    -- Normal = { fg = c.foreground },
    SignColumn = { bg = c.background },
    VertSplit = { link = "TSComment" },
    -- Visual = { bg = c.highlight },
    -- VisualNOS = { bg = c.highlight },
    -- WarningMsg = { fg = c.red },
    Whitespace = { link = "TSComment" },
    -- NormalFloat = { bg = c.background_lighter },
    Pmenu = { bg = c.background_lighter },
    -- Identifier = { fg = c.magenta },
    -- Delimiter = { fg = c.gray },
    -- Directory = { fg = c.blue },
    -- IncSearch = { bg = c.yellow, fg = c.background },
    -- Macro = { fg = c.magenta },
    -- MatchParen = { bg = c.background, fg = c.yellow, gui = "underline"},
    -- ModeMsg = { fg = c.foreground },
    -- MoreMsg = { fg = c.blue },
    -- NormalFloat = { fg = c.foreground },
    -- NonText = { fg = c.foreground },
    -- PreProc = { fg = c.blue },
    -- Question = { fg = c.blue },
    -- QuickFixLine = { bg = c.highlight },
    -- Repeat = { fg = c.magenta },
    -- Search = { bg = c.yellow, fg = c.background },
    -- Special = { fg = c.red },
    -- SpecialChar = { fg = c.red },
    -- Statement = { fg = c.magenta },
    -- Structure = { fg = c.magenta },
    -- Substitute = { bg = c.red, fg = c.background },
    -- Title = { fg = c.foreground },
    -- Todo = { fg = c.background, bg = c.foreground },

    -- LSP
    LspDiagnosticsDefaultWarning = { fg = c.lsp_warn },
    LspDiagnosticsDefaultError = { fg = c.lsp_error },
    LspDiagnosticsDefaultHint = { fg = c.lsp_hint },
    LspDiagnosticsDefaultInformation = { fg = c.lsp_info },
    DiagnosticError = { fg = c.lsp_error },
    DiagnosticHint = { fg = c.lsp_hint },
    DiagnosticInfo = { fg = c.lsp_info },
    DiagnosticWarn = { fg = c.lsp_warn },
    DiagnosticFloatingError = { fg = c.lsp_error },
    DiagnosticFloatingHint = { fg = c.lsp_hint },
    DiagnosticFloatingInfo = { fg = c.lsp_info },
    DiagnosticFloatingWarn = { fg = c.lsp_warn },
    DiagnosticSignError = { fg = c.lsp_error },
    DiagnosticSignHint = { fg = c.lsp_hint },
    DiagnosticSignInfo = { fg = c.lsp_info },
    DiagnosticSignWarn = { fg = c.lsp_warn },
    DiagnosticVirtualTextError = { fg = c.lsp_error },
    DiagnosticVirtualTextHint = { fg = c.lsp_hint },
    DiagnosticVirtualTextInfo = { fg = c.lsp_info },
    DiagnosticVirtualTextWarn = { fg = c.lsp_warn },

    --- Plugins:
    IndentBlanklineChar = { fg = c.background_02 },

    -- vim-illuminate
    illuminatedWord = { bg = c.illuminate },

    CmpItemAbbrDeprecated = { fg = c.red },

    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrMatchFuzzy = { fg = c.blue },

    CmpItemKindVariable = { link = "TSVariable" },
    CmpItemKindInterface = { fg = c.magenta },
    CmpItemKindText = { fg = c.foreground },

    CmpItemKindFunction = { link = "TSFunction" },
    CmpItemKindMethod = { link = "TSFunction" },

    CmpItemKindKeyword = { link = "TSKeyword" },
    CmpItemKindProperty = { link = "TSProperty" },
    CmpItemKindUnit = { fg = c.foreground },

    CmpItemMenu = { bg = c.background_lighter },

    FidgetTitle = { bg = c.background },
    FidgetTask = { bg = c.background },

    --- Filetypes:
    -- for when you use nvim as your manpager :^)
    manOptionDesc = { fg = c.red },
    manSectionHeading = { fg = c.magenta },
    manSubheading = { fg = c.magenta },
    manHeader = { fg = c.white },

    markdownH1Delimiter = { fg = c.background_01 },
    markdownH2Delimiter = { fg = c.background_01 },
    markdownH3Delimiter = { fg = c.background_01 },
    markdownH4Delimiter = { fg = c.background_01 },
    markdownH5Delimiter = { fg = c.background_01 },
    markdownH6Delimiter = { fg = c.background_01 },
    markdownH1 = { link = "TSTitle" },
    markdownH2 = { link = "TSTitle" },
    markdownH3 = { link = "TSTitle" },
    markdownH4 = { link = "TSTitle" },
    markdownH5 = { link = "TSTitle" },
    markdownH6 = { link = "TSTitle" },
    markdownListMarker = { fg = c.magenta },
    markdownUrl = { link = "TSURI" },
    markdownCode = { fg = c.white },

    bashTSParameter = { fg = c.foreground },
    bashTSVariable = { link = "TSVariable" },
}

return groups
