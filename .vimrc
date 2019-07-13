set cin nu ts=4 sw=4 sts=4 mouse=a
syn on

function! Compile()
    :!g++ -std=gnu++14 -g % -o %<.out
endfunction

function! Run()
    :!time ./%<.out
endfunction

map <F7> :call Compile()<cr>
map <F5> :call Run()<cr>
map <C-A> ggVG"+y
