vim.lsp.enable('lua_ls')
vim.lsp.enable('tsserver')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
      local client = vim.lsp.get_client_by_id(ev.data.client_id)
      if client:supports_method('textDocument/completion') then
          vim.opt.completeopt = {'menu', 'menuone', 'noinsert', 'fuzzy', 'popup'}
          vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
          vim.keymap.set('n', '<leader><C-Space>', function()
              vim.lsp.completion.get()
          end)
      end
  end,
})

-- vim.lsp.handlers['textDocument/hover']= vim.lsp.with(
--   { border = "rounded" }, -- opciones: "single", "double", "rounded", "solid", "shadow"
--   vim.lsp.handlers.hover
-- )
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded',
    focusable = false,
    style = 'minimal',
    relative = 'cursor',
    width = 80,
    height = 20,
  }
)

vim.diagnostic.config({
  -- underline = true,
  -- virtual_text = {
  --   spacing = 4,
  --   prefix = "●",
  --   severity_sort = true,
  -- },
  -- signs = {
  --   text = {
  --     [vim.diagnostic.severity.ERROR] = " ",
  --     [vim.diagnostic.severity.WARN] = " ",
  --   },
  -- },
  -- update_in_insert = false,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

