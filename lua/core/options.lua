local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
local tabsize = 4
opt.tabstop = tabsize
opt.shiftwidth = tabsize
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 高亮所在行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
