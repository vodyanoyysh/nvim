require('kanagawa').setup({
    compile = false,             
    undercurl = true,            
    commentStyle = { italic = true },
    functionStyle = { italic = false},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,        
    dimInactive = false,         
    terminalColors = true,      
    colors = {                 
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors)
        return {}
    end,
    theme = "dragon",
    background = {
        dark = "dragon"
    }
})    
