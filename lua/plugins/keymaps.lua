local keymap = vim.keymap


-- markdown 实时渲染
keymap.set("n", "<leader>md", ":MarkdownPreviewToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
