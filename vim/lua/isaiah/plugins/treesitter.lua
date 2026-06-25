return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "python",
      },
    })

    require("nvim-ts-autotag").setup()

    -- Compatibility shim for plugins using old nvim-treesitter API
    local ok, parsers = pcall(require, "nvim-treesitter.parsers")
    if ok then
      if not parsers.ft_to_lang then
        parsers.ft_to_lang = function(ft)
          local lang = vim.treesitter.language.get_lang(ft)
          return lang or ft
        end
      end
      if not parsers.is_enabled then
        parsers.is_enabled = function(_, _, _) return false end
      end
    end
  end,
}
