-- カスタムファイルタイプ定義
-- Neovim の組み込み filetype.lua より優先させるため vim.filetype.add() を使用

vim.filetype.add({
  extension = {
    -- workflowish
    md = 'workflowish',
    mkd = 'workflowish',
    markdown = 'workflowish',
    mdc = 'workflowish',
    wofl = 'workflowish',
  },
  -- filename = {
  --   ['特定のファイル名'] = 'filetype',
  -- },
  -- pattern = {
  --   ['パターン'] = 'filetype',
  -- },
})
