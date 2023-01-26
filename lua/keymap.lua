local opts = { noremap = true, silent = true }

-- i mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", opts)
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", opts)
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", opts)
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", opts)
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", opts)
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", opts)


-- c mode
vim.api.nvim_set_keymap("c", "<C-h>", "<Left>", opts)
vim.api.nvim_set_keymap("c", "<C-j>", "<Down>", opts)
vim.api.nvim_set_keymap("c", "<C-k>", "<Up>", opts)
vim.api.nvim_set_keymap("c", "<C-l>", "<Right>", opts)
vim.api.nvim_set_keymap("c", "<C-a>", "<Home>", opts)
vim.api.nvim_set_keymap("c", "<C-e>", "<End>", opts)

-- n mode
vim.api.nvim_set_keymap("n", "<leader>v", ":vs<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>s", ":sp<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>1", ":1b<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>2", ":2b<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-a>", "<Home>", opts)
vim.api.nvim_set_keymap("n", "<C-e>", "<End>", opts)
