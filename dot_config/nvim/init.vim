let VIMRC=expand('$HOME/.vimrc')
let VIM_CONFIG_FOLDER=expand('<sfile>:p:h') . "/src"
let config_files=split(globpath(VIM_CONFIG_FOLDER, '*.vim'), '\n')
exe 'source' VIMRC
for config in config_files
	exe 'source' config
endfor

" Auto reload vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,init.vim,*.vim so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

lua <<EOF
require 'term'
EOF

