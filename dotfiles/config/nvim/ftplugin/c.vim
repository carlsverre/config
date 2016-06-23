setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab

setlocal formatoptions-=c formatoptions-=o formatoptions-=r

nmap <buffer> <F5> :w<CR>:!gcc -Wall -g % -o %:r && ./%:r<CR>
nmap <buffer> <F6> :w<CR>:!gcc -Wall -g % -o %:r && ./%:r<SPACE>
nmap <buffer> <F7> :w<CR>:!gcc -Wall -g % -o %:r && gdb %:r<CR>
nmap <buffer> <F8> :w<CR>:!gcc -Wall -g % -o %:r && gdb %:r<SPACE>
