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
                bg = "#eee1c3",
                bg_dark = "#eee1c3",
                bg_highlight = "#b59b72",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#190403",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#190403",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#b59b72",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#6b2e06",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#944e1e",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#61620d",
                -- green: Comments, strings, success states, git additions
                green = "#465900",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#00656a",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#004584",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#6d2e52",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#964b79",
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