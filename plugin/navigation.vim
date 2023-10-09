nnoremap <C-h> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <c-l> :clist <CR>zz
nnoremap <Leader>lk :lnext<CR>zz
nnoremap <Leader>lj :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <Leader>q :call ToggleQFList(0)<CR>

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
