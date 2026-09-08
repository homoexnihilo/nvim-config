local ok, which_key = pcall(require, "which-key")
if not ok then
  return
end

which_key.setup({})

which_key.add({
  { "<leader>e", group = "Explorer" },
  { "<leader>f", group = "Find" },
})

vim.keymap.set("n", "<leader>?", function()
  which_key.show({ global = false })
end, { desc = "Show buffer keymaps" })
