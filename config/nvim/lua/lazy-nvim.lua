-- https://github.com/folke/lazy.nvim

-- 准备 lazy.nvim 模块(存在性检测)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- 将 lazypath 设置为运行时路径
-- lazypath = "~/.local/share/nvim/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- 加载 lazy.nvim 模块
-- 安装插件的 lua 脚本位置: "./plugins/xxx.lua"
require("lazy").setup("plugins")
