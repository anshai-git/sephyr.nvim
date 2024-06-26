local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(opts)
    local c = require("sephyr.colors").get()
    c = vim.tbl_extend("force", c, opts["color_overrides"])

    hl(0, "Normal", { fg = c.foreground, bg = c.background })

    hl(0, "Identifier", { fg = c.foreground, bg = c.background })
    hl(0, "Comment", { fg = c.green, bg = c.background, italic = opts.italic_comments })
    hl(0, "String", { fg = c.light_blue, bg = c.background })
    hl(0, "Keyword", { fg = c.white, bg = c.background })

    hl(0, "ColorColumn", { fg = "NONE", bg = c.background })
    hl(0, "StatusLine", { fg = c.foreground, bg = c.background })
    hl(0, "StatusLineNC", { fg = c.foreground, bg = c.background })
    hl(0, "Function", { fg = c.white, bg = "NONE" })
    hl(0, "Macro", { fg = c.light_green, bg = "NONE" })
    hl(0, "Type", { fg = c.foreground, bg = "NONE" })

    hl(0, "@annotation", { fg = c.foreground, bg = "NONE" })

    -- LSP
    hl(0, "@keyword", { fg = c.white, bg = "NONE" })
    hl(0, "@keyword.function", { fg = c.white, bg = "NONE" })
    hl(0, "@keyword.operator", { fg = c.white, bg = "NONE" })
    hl(0, "@keyword.coroutine", { fg = c.white, bg = "NONE" })
    hl(0, "@keyword.return", { fg = c.white, bg = "NONE" })
    hl(0, "@function.macro", { fg = c.light_green, bg = "NONE" })
    hl(0, "@lsp.type.modifier", { fg = c.light_blue, bg = "NONE" })
    hl(0, "@lsp.type.class", { fg = c.white, bg = "NONE" })
    hl(0, "@lsp.type.interface", { fg = c.white, bg = "NONE" })
    hl(0, "@lsp.type.decorator", { fg = c.white, bg = "NONE" })
    hl(0, "@lsp.type.typeParameter", { fg = c.foreground, bg = "NONE" })
    hl(0, "@lsp.type.parameter", { fg = c.foreground, bg = "NONE" })
    -- LSP end

    -- Java
    hl(0, "javaAnnotation", { fg = c.light_blue_2, bg = "NONE" })
    -- Java End


    -- Git Signs
    hl(0, "GitSignsAdd", { fg = c.foreground, bg = c.background })
    hl(0, "GitSignsChange", { fg = c.foreground, bg = c.background })
    hl(0, "GitSignsDelete", { fg = c.foreground, bg = c.background })
    hl(0, "GitSignsAddLn", { fg = c.foreground, bg = c.background })
    hl(0, "GitSignsChangeLn", { fg = c.foreground, bg = c.background })
    hl(0, "GitSignsDeleteLn", { fg = c.background, bg = c.foreground })
    -- Git Signs End

    -- hl(0, "Cursor", { fg = c.vscCursorDark, bg = c.vscCursorLight })
    -- hl(0, "CursorLine", { bg = c.vscCursorDarkDark })
    -- hl(0, "CursorColumn", { fg = "NONE", bg = c.vscCursorDarkDark })
    -- hl(0, "Directory", { fg = c.vscBlue, bg = c.vscBack })
    -- hl(0, "DiffAdd", { fg = "NONE", bg = c.vscDiffGreenLight })
    -- hl(0, "DiffChange", { fg = "NONE", bg = c.vscDiffRedDark })
    -- hl(0, "DiffDelete", { fg = "NONE", bg = c.vscDiffRedLight })
    -- hl(0, "DiffText", { fg = "NONE", bg = c.vscDiffRedLight })
    -- hl(0, "EndOfBuffer", { fg = c.vscBack, bg = "NONE" })
    -- hl(0, "ErrorMsg", { fg = c.vscRed, bg = c.vscBack })
    -- hl(0, "VertSplit", { fg = c.vscSplitDark, bg = c.vscBack })
    -- hl(0, "Folded", { fg = "NONE", bg = c.vscFoldBackground })
    -- hl(0, "FoldColumn", { fg = c.vscLineNumber, bg = c.vscBack })
    -- hl(0, "SignColumn", { fg = "NONE", bg = c.vscBack })
    -- hl(0, "IncSearch", { fg = c.vscBack, bg = c.gruvRed })
    -- hl(0, "LineNr", { fg = c.vscLineNumber, bg = c.vscBack })
    -- hl(0, "CursorLineNr", { fg = c.vscPopupFront, bg = c.vscBack })
    -- hl(0, "MatchParen", { fg = c.vscNone, bg = c.vscCursorDark })
    -- hl(0, "ModeMsg", { fg = c.vscFront, bg = c.vscLeftDark })
    -- hl(0, "MoreMsg", { fg = c.vscFront, bg = c.vscLeftDark })
    -- hl(0, "NonText", { fg = c.vscLineNumber, bg = c.vscNone })
    -- hl(0, "Pmenu", { fg = c.vscPopupFront, bg = c.vscPopupBack })
    -- hl(0, "PmenuSel", {
    --     fg = c.vscPopupFront,
    --     bg = c.vscPopupHighlightBlue,
    -- })
    -- hl(0, "PmenuSbar", { fg = "NONE", bg = c.vscPopupHighlightGray })
    -- hl(0, "PmenuThumb", { fg = "NONE", bg = c.vscPopupFront })
    -- hl(0, "Question", { fg = c.vscBlue, bg = c.vscBack })
    -- hl(0, "Search", { fg = c.vscBack, bg = c.gruvRed })
    -- hl(0, "SpecialKey", { fg = c.vscBlue, bg = c.vscNone })
    -- hl(0, "TabLine", { fg = c.vscFront, bg = c.vscTabOther })
    -- hl(0, "TabLineFill", { fg = c.vscFront, bg = c.vscTabOutside })
    -- hl(0, "TabLineSel", { fg = c.vscFront, bg = c.vscTabCurrent })
    -- hl(0, "Title", { fg = c.vscNone, bg = c.vscNone, bold = true })
    -- hl(0, "Visual", { fg = c.vscNone, bg = c.vscSelection })
    -- hl(0, "VisualNOS", { fg = c.vscNone, bg = c.vscSelection })
    -- hl(0, "WarningMsg", { fg = c.vscRed, bg = c.vscBack, bold = true })
    -- hl(0, "WildMenu", { fg = c.vscNone, bg = c.vscSelection })
    -- hl(0, "Constant", { fg = c.vsaLightGreen, bg = "NONE" })
    -- hl(0, "Character", { fg = c.gruvFg2, bg = "NONE" })
    -- hl(0, "Number", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "Boolean", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Float", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "Statement", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Conditional", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Repeat", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "Label", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Operator", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "Exception", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "PreProc", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Include", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Define", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Type", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "StorageClass", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "Structure", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "Typedef", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "Special", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "SpecialChar", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "Tag", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "Delimiter", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "SpecialComment", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "Debug", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "Underlined", { fg = c.vscNone, bg = "NONE", underline = true })
    -- hl(0, "Conceal", { fg = c.vscFront, bg = c.vscBack })
    -- hl(0, "Ignore", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "Error", { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
    -- hl(0, "Todo", { fg = c.vscYellowOrange, bg = c.vscBack, bold = true })
    -- hl(0, "SpellBad", { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
    -- hl(0, "SpellCap", { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
    -- hl(0, "SpellRare", { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
    -- hl(0, "SpellLocal", { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
    -- hl(0, "Whitespace", { fg = c.vscLineNumber })
    --
    -- -- Treesitter
    -- hl(0, "@error", { fg = c.vscRed, bg = "NONE" })
    -- hl(0, "@preproc", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@define", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@punctuation.bracket", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "@punctuation.special", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "@comment", { fg = c.vscGreen, bg = "NONE", italic = opts.italic_comments })
    -- hl(0, "@constant", { fg = c.vsaLightGreen, bg = "NONE" })
    -- hl(0, "@constant.builtin", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@constant.macro", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@string.regex", { fg = c.vsaLightGreen, bg = "NONE" })
    -- hl(0, "@string", { fg = c.gruvFg2, bg = "NONE" })
    -- hl(0, "@character", { fg = c.gruvFg2, bg = "NONE" })
    -- hl(0, "@character.special", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "@number", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@boolean", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@float", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@annotation", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@attribute", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@namespace", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@function.builtin", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@function", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@function.call", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@parameter", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@parameter.reference", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@method", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "@method.call", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "@field", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@property", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@constructor", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@conditional", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@repeat", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@label", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@operator", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "@exception", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@type", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@type.builtin", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@type.qualifier", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@type.definition", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@storageClass", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@structure", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@include", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@variable", { fg = c.gruvBlue, bg = "NONE" })
    -- hl(0, "@variable.builtin", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "@text", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "@text.underline", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "@tag", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "@tag.delimiter", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "@tag.attribute", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- hl(0, "@definition.constant", { fg = c.gruvBlue, bg = "NONE" })
    -- hl(0, "@definition.function", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@definition.method", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "@definition.var", { fg = c.gruvBlue, bg = "NONE" })
    -- hl(0, "@definition.parameter", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@definition.macro", { fg = c.gruvPurple, bg = "NONE" })
    -- hl(0, "@definition.type", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "@definition.field", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@definition.enum", { fg = c.vsaLightGreen, bg = "NONE" })
    -- hl(0, "@definition.namespace", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "@definition.import", { fg = c.gruvRed, bg = "NONE" })
    --
    -- hl(0, "@error.latex", { link = "@error" })
    -- hl(0, "@function.latex", { link = "@function" })
    -- hl(0, "@comment.latex", { link = "@comment" })
    -- hl(0, "@punctuation.special.latex", { link = "@constant" })
    -- hl(0, "@punctuation.delimiter.latex", { link = "@punctuation.delimiter" })
    -- hl(0, "@punctuation.bracket.latex", { link = "@punctuation.bracket" })
    -- hl(0, "@text.environment.latex", { link = "@method" })
    -- hl(0, "@text.environment.name.latex", { link = "@namespace" })
    -- hl(0, "@text.reference.latex", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "@text.math.latex", { link = "@number" })
    -- hl(0, "@text.title.latex", { link = "@text.title" })
    -- hl(0, "@text.title.1.latex", { link = "@text.title" })
    -- hl(0, "@text.title.2.latex", { link = "@text.title" })
    -- hl(0, "@text.title.3.latex", { link = "@text.title" })
    -- hl(0, "@text.title.4.latex", { link = "@text.title" })
    -- hl(0, "@text.title.5.latex", { link = "@text.title" })
    -- hl(0, "@text.title.6.latex", { link = "@text.title" })
    -- hl(0, "@text.uri.latex", { fg = c.vscLightBlue, bg = "NONE", underline = true })
    -- hl(0, "@namespace.latex", { link = "@function" })
    -- hl(0, "@include.latex", { link = "@include" })
    -- hl(0, "@string.latex", { link = "@string" })
    -- -- hl(0, "@spell.latex", { link = "@text" })
    -- -- hl(0, "@nospell.latex", { link = "@text" })
    --
    -- --LSP
    -- hl(0, "LspNamespace", { fg = c.vsaOrange, bg = "NONE" })
    --
    -- hl(0, "@text.title", { fg = c.vscBlue, bold = true })
    -- hl(0, "@text.literal", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "markdown@text.literal", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "markdown_inline@text.literal", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "@text.emphasis", { fg = c.vscFront, bg = "NONE", italic = true })
    -- hl(0, "@text.strong", { fg = c.vscBlue, bold = true })
    -- hl(0, "@text.uri", { fg = c.vscFront, bg = "NONE", underline = true })
    -- hl(0, "@textReference", { fg = c.vscOrange })
    -- hl(0, "@punctuation.delimiter", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "@stringEscape", { fg = c.vscOrange, bold = true })
    -- hl(0, "@stringSpecial", { fg = c.vscOrange, bold = true })
    -- hl(0, "@text.note", { fg = c.vscBlueGreen, bg = "NONE", bold = true })
    -- hl(0, "@text.warning", { fg = c.vscYellowOrange, bg = "NONE", bold = true })
    -- hl(0, "@text.danger", { fg = c.vscRed, bg = "NONE", bold = true })
    --
    -- -- Markdown
    -- hl(0, "markdownBold", { fg = c.vscBlue, bold = true })
    -- hl(0, "markdownCode", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "markdownRule", { fg = c.vscBlue, bold = true })
    -- hl(0, "markdownCodeDelimiter", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "markdownHeadingDelimiter", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "markdownFootnote", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "markdownFootnoteDefinition", { fg = c.vscOrange })
    -- hl(0, "markdownUrl", { fg = c.vscFront, bg = "NONE", underline = true })
    -- hl(0, "markdownLinkText", { fg = c.vscOrange })
    -- hl(0, "markdownEscape", { fg = c.vscOrange })
    --
    -- -- JSON
    -- hl(0, "jsonKeyword", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsonEscape", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "jsonNull", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "jsonBoolean", { fg = c.vscBlue, bg = "NONE" })
    --
    -- -- HTML
    -- hl(0, "htmlTag", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "htmlEndTag", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "htmlTagName", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "htmlSpecialTagName", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "htmlArg", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- PHP
    -- hl(0, "phpStaticClasses", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "phpMethod", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "phpClass", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "phpFunction", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "phpInclude", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "phpUseClass", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "phpRegion", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "phpMethodsVar", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- CSS
    -- hl(0, "cssBraces", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "cssInclude", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "cssTagName", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssClassName", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssPseudoClass", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssPseudoClassId", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssPseudoClassLang", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssIdentifier", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "cssProp", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "cssDefinition", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "cssAttr", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssAttrRegion", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssColor", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssFunction", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssFunctionName", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssVendor", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssValueNumber", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssValueLength", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssUnitDecorators", { fg = c.vscOrange, bg = "NONE" })
    -- hl(0, "cssStyle", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "cssImportant", { fg = c.vscBlue, bg = "NONE" })
    --
    -- -- JavaScript
    -- hl(0, "jsVariableDef", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsFuncArgs", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsFuncBlock", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsRegexpString", { fg = c.vscLightRed, bg = "NONE" })
    -- hl(0, "jsThis", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "jsOperatorKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "jsDestructuringBlock", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsObjectKey", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsGlobalObjects", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "jsModuleKeyword", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsClassDefinition", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "jsClassKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "jsExtendsKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "jsExportDefault", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "jsFuncCall", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "jsObjectValue", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsParen", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsObjectProp", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsIfElseBlock", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsParenIfElse", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsSpreadOperator", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "jsSpreadExpression", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- Typescript
    -- hl(0, "typescriptLabel", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptExceptions", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptBraces", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "typescriptEndColons", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptParens", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "typescriptDocTags", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptDocComment", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptLogicSymbols", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptImport", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "typescriptBOM", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptVariableDeclaration", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptVariable", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptExport", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "typescriptAliasDeclaration", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptAliasKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptClassName", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptAccessibilityModifier", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptOperator", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptArrowFunc", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptMethodAccessor", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptMember", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "typescriptTypeReference", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptTemplateSB", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "typescriptArrowFuncArg", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptParamImpl", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptFuncComma", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptCastKeyword", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptCall", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptCase", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptReserved", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "typescriptDefault", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptDecorator", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "typescriptPredefinedType", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptClassHeritage", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptClassExtends", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptClassKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptBlock", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptDOMDocProp", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptTemplateSubstitution", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptClassBlock", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptFuncCallArg", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptIndexExpr", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptConditionalParen", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptArray", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "typescriptES6SetProp", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptObjectLiteral", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptTypeParameter", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptEnumKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptEnum", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptLoopParen", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptParenExp", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptModule", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "typescriptAmbientDeclaration", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptFuncTypeArrow", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptInterfaceHeritage", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptInterfaceName", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptInterfaceKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptInterfaceExtends", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptGlobal", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "typescriptAsyncFuncKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptFuncKeyword", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "typescriptGlobalMethod", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "typescriptPromiseMethod", { fg = c.vscYellow, bg = "NONE" })
    --
    -- -- XML
    -- hl(0, "xmlTag", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "xmlTagName", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "xmlEndTag", { fg = c.vscBlue, bg = "NONE" })
    --
    -- -- Ruby
    -- hl(0, "rubyClassNameTag", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "rubyClassName", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "rubyModuleName", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "rubyConstant", { fg = c.vscBlueGreen, bg = "NONE" })
    --
    -- -- Golang
    -- hl(0, "goPackage", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goImport", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goVar", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goConst", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goStatement", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "goType", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goSignedInts", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goUnsignedInts", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goFloats", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goComplexes", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goBuiltins", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "goBoolean", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goPredefinedIdentifiers", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goTodo", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "goDeclaration", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goDeclType", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goTypeDecl", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "goTypeName", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "goVarAssign", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "goVarDefs", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "goReceiver", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "goReceiverType", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "goFunctionCall", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "goMethodCall", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "goSingleDecl", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- Python
    -- hl(0, "pythonStatement", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonOperator", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonException", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "pythonExClass", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "pythonBuiltinObj", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "pythonBuiltinType", { fg = c.vscBlueGreen, bg = "NONE" })
    -- hl(0, "pythonBoolean", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonNone", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonTodo", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonClassVar", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "pythonClassDef", { fg = c.vscBlueGreen, bg = "NONE" })
    --
    -- -- TeX
    -- hl(0, "texStatement", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "texBeginEnd", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "texBeginEndName", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "texOption", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "texBeginEndModifier", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "texDocType", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "texDocTypeArgs", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- Git
    -- hl(0, "gitcommitHeader", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "gitcommitOnBranch", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "gitcommitBranch", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "gitcommitComment", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "gitcommitSelectedType", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "gitcommitSelectedFile", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "gitcommitDiscardedType", { fg = c.vscRed, bg = "NONE" })
    -- hl(0, "gitcommitDiscardedFile", { fg = c.vscRed, bg = "NONE" })
    -- hl(0, "gitcommitOverflow", { fg = c.vscRed, bg = "NONE" })
    -- hl(0, "gitcommitSummary", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "gitcommitBlank", { fg = c.vscPink, bg = "NONE" })
    --
    -- -- Lua
    -- hl(0, "luaFuncCall", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "luaFuncArgName", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "luaFuncKeyword", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "luaLocal", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "luaBuiltIn", { fg = c.vscBlue, bg = "NONE" })
    --
    -- -- SH
    -- hl(0, "shDeref", { fg = c.vscLightBlue, bg = "NONE" })
    -- hl(0, "shVariable", { fg = c.vscLightBlue, bg = "NONE" })
    --
    -- -- SQL
    -- hl(0, "sqlKeyword", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "sqlFunction", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "sqlOperator", { fg = c.vscPink, bg = "NONE" })
    --
    -- -- YAML
    -- hl(0, "yamlKey", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "yamlConstant", { fg = c.vscBlue, bg = "NONE" })
    --
    -- -- Gitgutter
    -- hl(0, "GitGutterAdd", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "GitGutterChange", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "GitGutterDelete", { fg = c.vscRed, bg = "NONE" })
    --
    --
    -- -- NvimTree
    -- hl(0, "NvimTreeRootFolder", { fg = c.vscFront, bg = "NONE", bold = true })
    -- hl(0, "NvimTreeGitDirty", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "NvimTreeGitNew", { fg = c.vscGreen, bg = "NONE" })
    -- hl(0, "NvimTreeImageFile", { fg = c.vscViolet, bg = "NONE" })
    -- hl(0, "NvimTreeEmptyFolderName", { fg = c.vscGray, bg = "NONE" })
    -- hl(0, "NvimTreeFolderName", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "NvimTreeSpecialFile", { fg = c.vscPink, bg = "NONE", underline = true })
    -- hl(0, "NvimTreeNormal", {
    --     fg = c.vscFront,
    --     bg = opts.disable_nvimtree_bg and c.vscBack or c.vscLeftDark,
    -- })
    -- hl(0, "NvimTreeCursorLine", {
    --     fg = "NONE",
    --     bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftMid,
    -- })
    -- hl(0, "NvimTreeVertSplit", {
    --     fg = opts.disable_nvimtree_bg and c.vscSplitDark or c.vscBack,
    --     bg = c.vscBack,
    -- })
    -- hl(0, "NvimTreeEndOfBuffer", {
    --     fg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark,
    -- })
    -- hl(0, "NvimTreeOpenedFolderName", {
    --     fg = "NONE",
    --     bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark,
    -- })
    -- hl(0, "NvimTreeGitRenamed", { fg = c.vscGitRenamed, bg = "NONE" })
    -- hl(0, "NvimTreeGitIgnored", { fg = c.vscGitIgnored, bg = "NONE" })
    -- hl(0, "NvimTreeGitDeleted", { fg = c.vscGitDeleted, bg = "NONE" })
    -- hl(0, "NvimTreeGitStaged", { fg = c.vscGitStageModified, bg = "NONE" })
    -- hl(0, "NvimTreeGitMerge", { fg = c.vscGitUntracked, bg = "NONE" })
    -- hl(0, "NvimTreeGitDirty", { fg = c.vscGitModified, bg = "NONE" })
    -- hl(0, "NvimTreeGitNew", { fg = c.vscGitAdded, bg = "NONE" })
    --
    -- -- Bufferline
    -- hl(0, "BufferLineIndicatorSelected", { fg = c.vscLeftDark, bg = "NONE" })
    -- hl(0, "BufferLineFill", { fg = "NONE", bg = c.vscLeftDark })
    --
    -- -- BarBar
    -- hl(0, "BufferCurrent", { fg = c.vscFront, bg = c.vscTabCurrent })
    -- hl(0, "BufferCurrentIndex", { fg = c.vscFront, bg = c.vscTabCurrent })
    -- hl(0, "BufferCurrentMod", { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
    -- hl(0, "BufferCurrentSign", { fg = c.vscFront, bg = c.vscTabCurrent })
    -- hl(0, "BufferCurrentTarget", { fg = c.vscRed, bg = c.vscTabCurrent })
    -- hl(0, "BufferVisible", { fg = c.vscGray, bg = c.vscTabCurrent })
    -- hl(0, "BufferVisibleIndex", { fg = c.vscGray, bg = c.vscTabCurrent })
    -- hl(0, "BufferVisibleMod", { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
    -- hl(0, "BufferVisibleSign", { fg = c.vscGray, bg = c.vscTabCurrent })
    -- hl(0, "BufferVisibleTarget", { fg = c.vscRed, bg = c.vscTabCurrent })
    -- hl(0, "BufferInactive", { fg = c.vscGray, bg = c.vscTabOther })
    -- hl(0, "BufferInactiveIndex", { fg = c.vscGray, bg = c.vscTabOther })
    -- hl(0, "BufferInactiveMod", { fg = c.vscYellowOrange, bg = c.vscTabOther })
    -- hl(0, "BufferInactiveSign", { fg = c.vscGray, bg = c.vscTabOther })
    -- hl(0, "BufferInactiveTarget", { fg = c.vscRed, bg = c.vscTabOther })
    -- hl(0, "BufferTabpages", { fg = c.vscFront, bg = c.vscTabOther })
    -- hl(0, "BufferTabpagesFill", { fg = c.vscFront, bg = c.vscTabOther })
    --
    -- -- IndentBlankLine
    -- hl(0, "IndentBlanklineContextChar", { fg = c.vscContextCurrent, bg = "NONE", nocombine = true })
    -- hl(0, "IndentBlanklineContextStart", {
    --     sp = c.vscContextCurrent,
    --     bg = "NONE",
    --     nocombine = true,
    --     underline = true,
    -- })
    -- hl(0, "IndentBlanklineChar", { fg = c.vscContext, bg = "NONE", nocombine = true })
    -- hl(0, "IndentBlanklineSpaceChar", { fg = c.vscContext, bg = "NONE", nocombine = true })
    -- hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.vscContext, bg = "NONE", nocombine = true })
    --
    -- -- LSP
    -- hl(0, "DiagnosticError", { fg = c.vscRed, bg = "NONE" })
    -- hl(0, "DiagnosticWarn", { fg = c.vscYellow, bg = "NONE" })
    -- hl(0, "DiagnosticInfo", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "DiagnosticHint", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscRed })
    -- hl(0, "DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscYellow })
    -- hl(0, "DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscBlue })
    -- hl(0, "DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscBlue })
    -- hl(0, "LspReferenceText", {
    --     fg = "NONE",
    --     bg = c.vscPopupHighlightGray,
    -- })
    -- hl(0, "LspReferenceRead", {
    --     fg = "NONE",
    --     bg = c.vscPopupHighlightGray,
    -- })
    -- hl(0, "LspReferenceWrite", {
    --     fg = "NONE",
    --     bg = c.vscPopupHighlightGray,
    -- })
    --
    -- -- Nvim compe
    -- hl(0, "CmpItemKindVariable", { fg = c.gruvBlue, bg = "NONE" })
    -- hl(0, "CmpItemKindInterface", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "CmpItemKindText", { fg = c.gruvFg2, bg = "NONE" })
    -- hl(0, "CmpItemKindFunction", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "CmpItemKindMethod", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "CmpItemKindKeyword", { fg = c.gruvRed, bg = "NONE" })
    -- hl(0, "CmpItemKindProperty", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "CmpItemKindUnit", { fg = c.gruvFg1, bg = "NONE" })
    -- hl(0, "CmpItemKindConstructor", { fg = c.vsaOrange, bg = "NONE" })
    -- hl(0, "CmpItemKindClass", { fg = c.vsaGold, bg = "NONE" })
    -- hl(0, "CmpItemMenu", { fg = c.vscPopupFront, bg = "NONE" })
    -- hl(0, "CmpItemAbbr", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "CmpItemAbbrDeprecated", { fg = c.vscCursorDark, bg = c.vscPopupBack, strikethrough = true })
    -- hl(0, "CmpItemAbbrMatch", {
    --     fg = c.gruvRed,
    --     bg = "NONE",
    --     bold = true,
    -- })
    -- hl(0, "CmpItemAbbrMatchFuzzy", {
    --     fg = c.gruvRed,
    --     bg = "NONE",
    --     bold = true,
    -- })
    --
    -- -- Dashboard
    -- hl(0, "DashboardHeader", { fg = c.vscBlue, bg = "NONE" })
    -- hl(0, "DashboardCenter", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "DashboardCenterIcon", { fg = c.vscYellowOrange, bg = "NONE" })
    -- hl(0, "DashboardShortCut", { fg = c.vscPink, bg = "NONE" })
    -- hl(0, "DashboardFooter", { fg = c.vscBlue, bg = "NONE", italic = true })
    --
    -- hl(0, "NvimTreeFolderIcon", { fg = c.vscDarkBlue, bg = "NONE" })
    -- hl(0, "NvimTreeIndentMarker", { fg = c.vscTabOther, bg = "NONE" })
    --
    -- hl(0, "LspFloatWinNormal", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "LspFloatWinBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaHoverBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaSignatureHelpBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaCodeActionBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaDefPreviewBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspLinesDiagBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaRenameBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaBorderTitle", { fg = c.vscCursorDark, bg = "NONE" })
    -- hl(0, "LSPSagaDiagnosticTruncateLine", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaDiagnosticBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaDiagnosticBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaShTruncateLine", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaShTruncateLine", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaDocTruncateLine", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaRenameBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "LspSagaLspFinderBorder", { fg = c.vscTabOther, bg = "NONE" })
    --
    -- hl(0, "TelescopePromptBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "TelescopeResultsBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "TelescopePreviewBorder", { fg = c.vscTabOther, bg = "NONE" })
    -- hl(0, "TelescopeNormal", { fg = c.vscFront, bg = "NONE" })
    -- hl(0, "TelescopeSelection", { fg = "#FFFFFF", bg = c.vscPopupHighlightBlue })
    -- hl(0, "TelescopeMultiSelection", { fg = c.vscBack, bg = c.vscPopupHighlightBlue })
    -- hl(0, "TelescopeMatching", { fg = "orange", bg = "NONE", bold = true, nil })
    -- hl(0, "TelescopePromptPrefix", { fg = c.vscFront, bg = "NONE" })
    --
    -- -- COC.nvim
    -- hl(0, "CocFloating", { fg = "NONE", bg = c.vscPopupBack })
    -- hl(0, "CocMenuSel", { fg = "#FFFFFF", bg = "#285EBA" })
    -- hl(0, "CocSearch", { fg = "#2A64B9", bg = "NONE" })
    --
    -- -- Pmenu
    -- hl(0, "Pmenu", { fg = "NONE", bg = c.vscPopupBack })
    -- hl(0, "PmenuSel", { fg = "#FFFFFF", bg = "#285EBA" })
    --
    -- -- symbols-outline
    -- -- white fg and lualine blue bg
    -- hl(0, "FocusedSymbol", { fg = c.vscBack, bg = "#AF00DB" })
    -- hl(0, "SymbolsOutlineConnector", { fg = c.vscTabOther, bg = "NONE" })
end

theme.link_highlight = function()
    -- -- Legacy groups for official git.vim and diff.vim syntax
    -- hl(0, "diffAdded", { link = "DiffAdd" })
    -- hl(0, "diffChanged", { link = "DiffChange" })
    -- hl(0, "diffRemoved", { link = "DiffDelete" })
    -- -- Nvim compe
    -- hl(0, "CompeDocumentation", { link = "Pmenu" })
    -- hl(0, "CompeDocumentationBorder", { link = "Pmenu" })
    -- hl(0, "CmpItemKind", { link = "Pmenu" })
    -- hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
    -- hl(0, "CmpItemKindOperator", { link = "@operator" })
    -- hl(0, "CmpItemKindReference", { link = "@parameter.reference" })
    -- hl(0, "CmpItemKindValue", { link = "@field" })
    -- hl(0, "CmpItemKindField", { link = "@field" })
    -- hl(0, "CmpItemKindEnum", { link = "@constant" })
    -- hl(0, "CmpItemKindSnippet", { link = "@text" })
    -- hl(0, "CmpItemKindColor", { link = "cssColor" })
    -- hl(0, "CmpItemKindFile", { link = "@text.uri" })
    -- hl(0, "CmpItemKindFolder", { link = "@text.uri" })
    -- hl(0, "CmpItemKindEvent", { link = "@constant" })
    -- hl(0, "CmpItemKindEnumMember", { link = "@field" })
    -- hl(0, "CmpItemKindConstant", { link = "@constant" })
    -- hl(0, "CmpItemKindStruct", { link = "@structure" })
    -- hl(0, "CmpItemKindTypeParameter", { link = "@parameter" })
    --
    -- -- LSP semantic tokens
    -- hl(0, "@lsp.type.class", { link = "@type" })
    -- hl(0, "@lsp.type.comment", { link = "@comment" })
    -- -- hl(0, "@lsp.type.decorator", { link = ""})
    -- hl(0, "@lsp.type.enum", { link = "@type" })
    -- hl(0, "@lsp.type.enumMember", { link = "@constant" })
    -- hl(0, "@lsp.type.function", { link = "@function" })
    -- hl(0, "@lsp.type.interface", { link = "@type" })
    -- hl(0, "@lsp.type.macro", { link = "Macro" })
    -- hl(0, "@lsp.type.method", { link = "@method" })
    -- hl(0, "@lsp.type.parameter", { link = "@parameter" })
    -- hl(0, "@lsp.type.namespace", { link = "@namespace" })
    -- hl(0, "@lsp.type.property", { link = "@property" })
    -- hl(0, "@lsp.type.selfKeyword", { link = "@keyword" })
    -- hl(0, "@lsp.type.struct", { link = "@structure" })
    -- hl(0, "@lsp.type.type", { link = "@type" })
    -- hl(0, "@lsp.type.typeParameter", { link = "Typedef" })
    -- hl(0, "@lsp.type.variable", { link = "@variable" })
    -- hl(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
    -- hl(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
    -- hl(0, "@lsp.type.operator", { link = "@operator" })
end

return theme
