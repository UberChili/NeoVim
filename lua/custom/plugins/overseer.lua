return {
  'stevearc/overseer.nvim',
  opts = {
    -- Create keybindings
    -- vim.keymap.set("n", "<leader>cc", "<cmd>OverseerRun<cr>")
    -- vim.keymap.set("n", "<leader>cC", "<cmd>OverseerRunCmd<cr>")
    vim.keymap.set('n', '<leader>cc', '<cmd>OverseerRunCmd<cr>'),
    vim.keymap.set('n', '<leader>ct', '<cmd>OverseerToggle<cr>'),
  },
}
