local null_ls = require "none-ls" -- null-ls is deprecated, so using none-ls

local b = null_ls.builtins

local sources = {

  -- css, scss
  b.formatting.stylelint.with {
    filetypes = {
      "scss",
      "css",
    },
  },
  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
      "yaml",
      "scss",
      "css",
    },
  }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- require("null-ls").setup {
--   -- you can reuse a shared lspconfig on_attach callback here
--   on_attach = function(client, bufnr)
--     if client.supports_method "textDocument/formatting" then
--       vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         group = augroup,
--         buffer = bufnr,
--         callback = function()
--           --           -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
--           --           -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
--           vim.lsp.buf.format {
--             bufnr = bufnr,
--           }
--         end,
--       })
--     end
--   end,
-- }
--
-- -- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- null_ls.setup {
--   debug = true,
--   sources = sources,
--   on_attach = function(client, bufnr)
--     if client.supports_method "textDocument/formatting" then
--       vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         group = augroup,
--         buffer = bufnr,
--         callback = function()
--           -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
--           -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
--           vim.lsp.buf.formatting_sync()
--         end,
--       })
--     end
--   end,
-- }
null_ls.setup {
  sources = sources,
}
