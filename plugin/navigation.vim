nnoremap <F10> :bnext <CR>
nnoremap <F9> :bprev <CR>

noremap <Leader>h :wincmd h <CR>
noremap <Leader>j :wincmd j <CR>
noremap <Leader>k :wincmd k <CR>
noremap <Leader>l :wincmd l <CR>

let g:f_l = 0
let g:f_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:f_g == 1
            let g:f_g = 0
            cclose
        else
            let g:f_g = 1
            copen
        end
    else
        if g:f_l == 1
            let g:f_l = 0
            lclose
        else
            let g:f_l = 1
            lopen
        end
    endif
endfun

if executable('rg')
    let g:rg_derive_root='true'
endif
