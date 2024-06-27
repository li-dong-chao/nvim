local keymap = vim.keymap


-- markdown 实时渲染
-- keymap.set("n", "<leader>md", ":MarkdownPreviewToggle<CR>")

-- nvim-tree
-- keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>")
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>")
keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>")

