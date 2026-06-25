return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = false, -- keep nvim-tree as default, oil is opt-in
      view_options = {
        show_hidden = true,
      },
    })

    vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Open oil file explorer" })
    vim.keymap.set("n", "<leader>O", "<cmd>Oil --float<CR>", { desc = "Open oil in floating window" })
  end,
}
