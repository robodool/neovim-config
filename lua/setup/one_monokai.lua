require("one_monokai").setup({
    colors = {
        green = "#98C379",
        blue = "#0000ff",
        roman = "#e36965",
        background = "#272822",
    },
    themes = function(colors)
        return {
            Normal = { fg = colors.green, bg = colors.background },
            Comment = { fg = "#676F7D", italic = true },
            Identifier = { fg = "#4EC9B0" },
            Function = { fg = "#4EC9B0" },
            ErrorMsg = { fg = "black", bg = "#ec6075", standout = true },
            NormalFloat = { link = "Normal" },
        }
    end,
})
