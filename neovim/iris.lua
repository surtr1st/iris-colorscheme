local config = {}

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
        function_color = '#3DA895',
        keyword = '#6977FF',
        include = '#6977FF',
        statement = '#6977FF',
        conditional = '#6977FF',
        repeat_cond = '#6977FF',
        type = '#60FFC6',
        constant = '#FF93A6',
        error = '#ff0000',
        warning_msg = '#ff8800',
        search = '#ffffff',
        visual = '#404040',
        cursor = '#ffffff',
        line_nr = '#606060',
        vert_split = '#404040',
        status_line = '#6977FF',
        diff_add = '#335533',
        diff_change = '#454545',
        diff_delete = '#553333',
        todo = '#ffcc00',
        operator = '#A5A5A5',       -- Operator (+, -, *, /, =, etc.)
        identifier = '#FFFFFF',     -- Identifier, variable names
        special = '#6C69B0',        -- Special characters and escape sequences
        preproc = '#569cd6',        -- Preprocessor statements (#include, #define, etc.)
        tag = '#FFB169',            -- HTML tags
        tagName = '#FFB169',        -- HTML tag name
        htmlArg = '#C8BFFF',        -- HTML tag attributes
        field = '#FFD6B0',          -- HTML tag name
        cssSelectorOp = '#C8BFFF',  -- CSS selector operator
        cssSelectorOp2 = '#6C69B0', -- CSS selector operator (e.g., ::before)
    }

    -- Set highlighting rules using the palette
    vim.cmd('hi Normal guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi StatusLine guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi StatusLineNC guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi WinSeparator guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi VertSplit guifg=' .. palette.unused)

    vim.cmd('hi Variable guifg=' .. palette.fg)
    vim.cmd('hi Comment guifg=' .. palette.comment)
    vim.cmd('hi String guifg=' .. palette.string)
    vim.cmd('hi Number guifg=' .. palette.number)
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
    vim.cmd('hi None guifg=' .. palette.fg)
    vim.cmd('hi htmlTag guifg=' .. palette.tag)
    vim.cmd('hi htmlTagName guifg=' .. palette.tagName)
    vim.cmd('hi htmlArg guifg=' .. palette.htmlArg)
    vim.cmd('hi cssSelectorOp guifg=' .. palette.cssSelectorOp)
    vim.cmd('hi cssSelectorOp2 guifg=' .. palette.cssSelectorOp2)
    vim.cmd('hi @field guifg=' .. palette.field)
    vim.cmd('hi @property guifg=' .. palette.field)
    vim.cmd('hi @parameter guifg=' .. palette.field)
    vim.cmd('hi @tag.attribute guifg=' .. palette.htmlArg)

    vim.cmd('hi NvimTreeNormal guifg=' .. palette.fg .. ' guibg=' .. palette.bg)
    vim.cmd('hi NvimTreeFolderName guifg=' .. palette.function_color)
    vim.cmd('hi NvimTreeGitDirty guifg=' .. palette.constant)
    vim.cmd('hi NvimTreeRootFolder guifg=' .. palette.keyword)
    vim.cmd('hi NvimTreeVertSplit guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
    vim.cmd('hi NvimTreeWinSeparator guifg=' .. palette.unused .. ' guibg=' .. palette.bg)
end

return config
