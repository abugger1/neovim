local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install ={""}, -- List of parsers to ignore installing
  highlight = {
    enable = true,
    disable = {""},  -- List of languages that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = {enable = true, disable = {"yaml"}},
}
