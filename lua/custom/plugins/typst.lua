return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '0.3.*',
  config = function()
    require('typst-preview').setup { debug = true }
  end,
  build = function()
    require('typst-preview').update()
  end,
}
