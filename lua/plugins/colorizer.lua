return {
    'norcalli/nvim-colorizer.lua',
    config = function ()
        require'colorizer'.setup{
            'css',
            'sass',
            'javascript',
            html = {
                mode = 'foreground';
            }
        }
    end
}
