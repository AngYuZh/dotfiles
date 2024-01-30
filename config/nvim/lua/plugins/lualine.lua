-- https://github.com/nvim-lualine/lualine.nvim

return {
    {
        'nvim-lualine/lualine.nvim',
        -- 插件配置
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'tokyonight'
                }
            }
        end
    }
}
