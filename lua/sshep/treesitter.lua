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
  context_commentstring = {
    enable =true,
    enable_autocmd=false,
  },
  rainbow = {
  enable = true,
    --disable = {"jsx", "cpp"}, list of languages you want to disable the plugin for
    extend_mode = true, --Also highlight non-braket delimiters like html tags, boolean or table: lang --> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines , int
    --colors = {} --table of hex strings
    --termcolors = {} --table of colour name strings
  },
   playground = {
  enable = true,
  },
}
