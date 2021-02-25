nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

nmap <silent> <C-c> <Plug>(coc-cursors-position)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


function! SplitIfNotOpen(...)
    let fname = a:1
    let call = ''
    if a:0 == 2
	let fname = a:2
	let call = a:1
    endif
    let bufnum=bufnr(expand(fname))
    let winnum=bufwinnr(bufnum)
    if winnum != -1
	" Jump to existing split
	exe winnum . "wincmd w"
    else
	" Make new split as usual
	exe "vsplit " . fname
    endif
    " Execute the cursor movement command
    exe call
endfunction

command! -nargs=+ CocSplitIfNotOpen :call SplitIfNotOpen(<f-args>)
