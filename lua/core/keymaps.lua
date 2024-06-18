vim.g.mapleader = " "

local keymap = vim.keymap

-- ------------- 插入模式 ------------ --
-- jk -> esc
keymap.set("i", "jk", "<ESC>")


-- ------------- 正常模式 ------------ --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新建窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新建窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
