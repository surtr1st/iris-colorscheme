-- Colorscheme:     Iris
-- Version:         1.1

local config = {}

function NeoVim(palette)
    vim.cmd('hi Normal guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi StatusLine guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi StatusLineNC guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi WinSeparator guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi VertSplit guifg=' .. palette.unused)
    vim.cmd('hi LineNr guifg=' .. palette.line_nr)
    vim.cmd('hi Directory guifg=' .. palette.tag)
end

function SyntaxHighlight(palette)
    vim.cmd('hi Variable guifg=' .. palette.fg)
    vim.cmd('hi Comment guifg=' .. palette.comment)
    vim.cmd('hi String guifg=' .. palette.string)
    vim.cmd('hi Number gui=bold guifg=' .. palette.number)
    vim.cmd('hi Boolean guifg=' .. palette.boolean)
    vim.cmd('hi Function guifg=' .. palette.function_color)
    vim.cmd('hi Keyword guifg=' .. palette.keyword)
    vim.cmd('hi Type guifg=' .. palette.type)
    vim.cmd('hi Constant guifg=' .. palette.constant)
    vim.cmd('hi Statement guifg=' .. palette.statement)
    vim.cmd('hi Conditional guifg=' .. palette.conditional)
    vim.cmd('hi Repeat guifg=' .. palette.repeat_cond)
    vim.cmd('hi Operator guifg=' .. palette.operator)
    vim.cmd('hi Identifier guifg=' .. palette.identifier)
    vim.cmd('hi Special guifg=' .. palette.function_color)
    vim.cmd('hi PreProc guifg=' .. palette.preproc)
    vim.cmd('hi Tag guifg=' .. palette.tag)
    vim.cmd('hi Include guifg=' .. palette.include)
    vim.cmd('hi htmlTag guifg=' .. palette.tag)
    vim.cmd('hi htmlTagName guifg=' .. palette.tagName)
    vim.cmd('hi htmlArg guifg=' .. palette.htmlArg)
    vim.cmd('hi cssSelectorOp guifg=' .. palette.cssSelectorOp)
    vim.cmd('hi cssSelectorOp2 guifg=' .. palette.cssSelectorOp2)
    vim.cmd('hi Macro guifg=' .. palette.macro)
    vim.cmd('hi Delimiter guifg=' .. palette.delimiter)
    vim.cmd('hi @field guifg=' .. palette.field)
    vim.cmd('hi @property guifg=' .. palette.field)
    vim.cmd('hi @parameter guifg=' .. palette.field)
    vim.cmd('hi @namespace guifg=' .. palette.namespace)
    vim.cmd('hi @variable.builtin guifg=' .. palette.reference)
    vim.cmd('hi @tag.attribute guifg=' .. palette.htmlArg)
    vim.cmd('hi @lsp.type.enum guifg=' .. palette.structure)
    vim.cmd('hi @lsp.type.enumMember guifg=' .. palette.number)
    vim.cmd('hi @punctuation guifg=' .. palette.special)
end

function NvimTree(palette)
    vim.cmd('hi NvimTreeNormal guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi NvimTreeFolderName guifg=' .. palette.structure)
    vim.cmd('hi NvimTreeOpenedFolderName guifg=' .. palette.macro)
    vim.cmd('hi NvimTreeGitDirty guifg=' .. palette.constant)
    vim.cmd('hi NvimTreeRootFolder guifg=' .. palette.keyword)
    vim.cmd('hi NvimTreeVertSplit guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi NvimTreeWinSeparator guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
end

config.setup = function()
    local palette = {
        bg = '#1A1A1A',
        fg = '#FFFFFF',
        unused = '#656565',
        object = '#6C69B0',
        comment = '#757575',
        string = '#907DFF',
        number = '#C8BFFF',
        boolean = '#FF5E7B',
        macro = '#0AB4AA',
        function_color = '#07C3A2',
        structure = '#23C3DE',
        keyword = '#6977FF',
        include = '#6977FF',
        namespace = '#DAD4FF',
        statement = '#6977FF',
        conditional = '#6977FF',
        repeat_cond = '#6977FF',
        type = '#23C3DE',
        alter_type = '#98ADF5',
        constant = '#6C69B0',
        error = '#ff0000',
        warning_msg = '#ff8800',
        search = '#ffffff',
        visual = '#404040',
        cursor = '#ffffff',
        line_nr = '#A5A5A5',
        vert_split = '#404040',
        status_line = '#6977FF',
        diff_add = '#335533',
        diff_change = '#454545',
        diff_delete = '#553333',
        todo = '#ffcc00',
        field = '#FFE1C6',
        operator = '#A5A5A5',       -- Operator (+, -, *, /, =, etc.)
        identifier = '#FFFFFF',     -- Identifier, variable names
        special = '#98ADF5',        -- Special characters and escape sequences
        preproc = '#569cd6',        -- Preprocessor statements (#include, #define, etc.)
        tag = '#FFBE82',            -- HTML tags
        tagName = '#FFBE82',        -- HTML tag name
        htmlArg = '#C8BFFF',        -- HTML tag attributes
        cssSelectorOp = '#C8BFFF',  -- CSS selector operator
        cssSelectorOp2 = '#6C69B0', -- CSS selector operator (e.g., ::before)
        reference = '#6C69B0',
        delimiter = '#23C3DE'
    }

    NeoVim(palette)
    SyntaxHighlight(palette)
    NvimTree(palette)
end

return config
