vim.g.mapleader = " "

local keymap = vim.keymap

-- ------------- 插入模式 ------------ --
-- jk -> esc
keymap.set("i", "jk", "<ESC>")


-- ------------- 正常模式 ------------ --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新建窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新建窗口
