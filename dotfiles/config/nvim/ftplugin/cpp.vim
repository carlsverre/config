setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal noexpandtab

setlocal formatoptions-=c formatoptions-=o formatoptions-=r

nmap <buffer> <F5> :w<CR>:make<CR>
nmap <buffer> <F6> :w<CR>:!g++ -Wall -g % -o %:r && ./%:r<SPACE>
nmap <buffer> <F7> :w<CR>:!g++ -Wall -g % -o %:r && gdb %:r<CR>
nmap <buffer> <F8> :w<CR>:!g++ -Wall -g % -o %:r && gdb %:r<SPACE>