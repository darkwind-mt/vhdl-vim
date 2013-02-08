autocmd Filetype vhdl call FT_vhdl()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 'Borrowed' VHDL Settings: http://0x7.ch/vim/vhdl/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FT_vhdl()
    " shortcuts
    imap <buffer> ,, <=
    imap <buffer> .. =>
    "map <Leader>vy :Viy<CR>
    "map <Leader>vpc :Vic<CR>
    "map <Leader>vpi :Vii<CR>
    map <Leader>y :let @v = system(" " . shellescape(expand(g:vhdl_parser_parse_dir . "%")))

    " abbreviations
    iabbr dt downto
    iabbr gen generate
    iabbr ot others
    iabbr sl std_logic
    iabbr slv std_logic_vector
    iabbr uns unsigned
    iabbr sin signed
    iabbr toi to_integer
    iabbr tos to_unsigned
    iabbr tou to_unsigned
endfunction

