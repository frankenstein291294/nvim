return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        require('bufferline').setup{
            options = {
                mode = 'buffer',
                view = 'multiwindow',
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = {'close'}
                },
                indicator = {
                    icon = '| ',
                    style = 'underline'
                }
            },
        }
    end
}
