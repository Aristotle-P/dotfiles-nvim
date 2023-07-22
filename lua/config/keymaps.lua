local builtin = require('telescope.builtin')
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>hi", ui.toggle_quick_menu)

vim.keymap.set("n", "<S-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<S-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<S-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<S-h>", function() ui.nav_file(4) end)

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered when half-screen jumping or searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste while keeping current buffer text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank and delete to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
