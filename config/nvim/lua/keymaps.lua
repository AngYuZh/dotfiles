vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 自定义映射
local mappings = {
    -- 返回 normal 模式
    {from = "jk",           to = "<Esc>",       mode = "i"},
    {from = "v",            to = "<Esc>",       mode = "v"},
    -- 跳到行首行尾
    {from = "H",            to = "^",           mode = "n"},
    {from = "L",            to = "$",           mode = "n"},
    {from = "<C-h>",        to = "<Esc>I",      mode = "i"},
    {from = "<C-l>",        to = "<Esc>A",      mode = "i"},
    -- 保存与退出
    {from = "<leader>w",    to = ":w!<cr>",     mode = "n"},
    {from = "<leader>q",    to = ":q!<cr>",     mode = "n"},
    -- visual模式下缩进代码
    {from = "<",            to = "<gv",         mode = "v"},
    {from = ">",            to = ">gv",         mode = "v"}

}

-- opt 参数
local opt = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- 绑定
for _, mapping in ipairs(mappings) do
    vim.keymap.set(
        mapping.mode or "n",
        mapping.from,
        mapping.to,
        mapping.opt or opt
    )
end
