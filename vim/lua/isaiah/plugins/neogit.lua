return {
  "neogitorg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- richer diff views
  },
  config = function()
    require("neogit").setup({
      integrations = {
        diffview = true,
      },
    })

    vim.keymap.set("n", "<leader>ng", "<cmd>Neogit<CR>", { desc = "Open Neogit" })
    vim.keymap.set("n", "<leader>nd", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
    vim.keymap.set("n", "<leader>nc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
  end,
}
