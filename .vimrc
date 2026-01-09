" add  ctags database
set tags=./tags

" use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
set cscopetag
" check cscope for definition of a symbol before checking ctags: set to 1
" if you wan the reverse search order.
set csto=0

" add any cscope database in current directory
if filereadable("cscope.out")
   cs add cscope.out   
" else add the database pointed to by environment variable
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
" show msg when any other cscope db added
set cscopeverbose

" cscope/vim key mappings
nnoremap fs :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap fg :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap fc :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap ft :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap fe :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nnoremap fd :cs find d <C-R>=expand("<cword>")<CR><CR>
