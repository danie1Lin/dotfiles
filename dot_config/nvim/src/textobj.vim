lua <<EOF
require'treesitter_config'
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

omap     <silent> f :<C-U>lua require('tsht').nodes()<CR>
vnoremap <silent> f :lua require('tsht').nodes()<CR>
