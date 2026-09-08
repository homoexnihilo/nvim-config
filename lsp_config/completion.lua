vim.opt.completeopt:append({ "menuone", "noselect", "popup" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)

    vim.keymap.set("n", "K", function()
      local cursor_line = vim.api.nvim_win_get_cursor(0)[1] - 1
      local diagnostics = vim.diagnostic.get(event.buf, { lnum = cursor_line })

      if #diagnostics > 0 then
        vim.diagnostic.open_float(event.buf, { scope = "line" })
      else
        vim.lsp.buf.hover()
      end
    end, {
      buffer = event.buf,
      desc = "Show diagnostic or documentation",
    })

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
      buffer = event.buf,
      desc = "Go to definition",
    })

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
      buffer = event.buf,
      desc = "Go to declaration",
    })

    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
      buffer = event.buf,
      desc = "Go to implementation",
    })

    vim.keymap.set("n", "gr", vim.lsp.buf.references, {
      buffer = event.buf,
      desc = "Find usages",
    })

    vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, {
      buffer = event.buf,
      desc = "Show function signature",
    })

    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, event.buf)
    end
  end,
})

vim.api.nvim_create_autocmd("InsertCharPre", {
  callback = function()
    if vim.fn.pumvisible() == 0 then
      vim.lsp.completion.get()
    end
  end,
})
