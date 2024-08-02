-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.split-and-window.edgy-nvim" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  --  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  -- { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
}
