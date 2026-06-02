--    .-============================-.
--  .'   *     .     *     .     *    '.
-- /     ____ ___ _   _ _   _ ____      \
-- |    |  _ \_ _| \ | | | | |  _ \     |
-- |    | |_) | ||  \| | | | | |_) |    |
-- |    |  __/| || |\  | |_| |  __/     |
-- |    |_|  |___|_| \_|\___/|_|        |
-- \                                    /
--  '.    *     .     *     .    *    .'
--    '-============================-'

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#190403",
                bg_dark = "#190403",
                bg_highlight = "#6f4d3c",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f1dfbe",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f1dfbe",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6f4d3c",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b45a24",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d0793d",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#c5a64f",
                -- green: Comments, strings, success states, git additions
                green = "#8da33c",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#3fa0a6",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#5f8fd8",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#b86591",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d587ae",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

--  ______   __       ______
-- /_____/\ /_/\     /_____/\
-- \:::_ \ \\:\ \    \:::_ \ \
--  \:\ \ \ \\:\ \    \:\ \ \ \
--   \:\ \ \ \\:\ \____\:\ \ \ \
--    \:\_\ \ \\:\/___/\\:\/.:| |
--  ___\_____\/_\_____\/ \____/_/  ______    _______   ______
-- /________/\/_____/\ /_______/\ /_____/\ /_______/\ /_____/\
-- \__.::.__\/\:::_ \ \\::: _  \ \\:::_ \ \\::: _  \ \\:::_ \ \
--   /_\::\ \  \:\ \ \ \\::(_)  \/_\:\ \ \ \\::(_)  \/_\:\ \ \ \
--   \:.\::\ \  \:\ \ \ \\::  _  \ \\:\ \ \ \\::  _  \ \\:\ \ \ \
--    \: \  \ \  \:\_\ \ \\::(_)  \ \\:\_\ \ \\::(_)  \ \\:\_\ \ \
--     \_____\/   \_____\/ \_______\/ \_____\/ \_______\/ \_____\/