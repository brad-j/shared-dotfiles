return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        debounce = 100,
        keymap = {
          accept = "<D-;>"
        }
      }
    })
  end,
}
