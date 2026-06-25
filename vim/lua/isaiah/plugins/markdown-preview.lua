return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  ft = { "markdown" },
  build = "cd app && npm install",
  keys = {
    { "<leader>md", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle markdown preview in browser" },
  },
}
