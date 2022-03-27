" Remap <c-j> and <c-k> for scroll float windows/popc-ks.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
  nnoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"
  inoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<c-j>"
  inoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<c-k>"
  vnoremap <silent><nowait><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
  vnoremap <silent><nowait><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"
endif
