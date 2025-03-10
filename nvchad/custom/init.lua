-- local autocmd = vim.api.nvim_create_autocmd

-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- Enable relative line numbers
vim.api.nvim_exec(
  [[
  augroup MyAutoCmds
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
]],
  false
)

-- Disable default tab completion
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- Set up tab for copilot completion
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Optional: add more keybindings for copilot
vim.api.nvim_set_keymap("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true })
vim.api.nvim_set_keymap("i", "<M-]>", "<Plug>(copilot-next)", { silent = true })
vim.api.nvim_set_keymap("i", "<M-[>", "<Plug>(copilot-previous)", { silent = true })

-- Keybindings for treewalker
vim.api.nvim_set_keymap("n", "<C-j>", ":Treewalker Down<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":Treewalker Up<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":Treewalker Left<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":Treewalker Right<CR>", { noremap = true })
