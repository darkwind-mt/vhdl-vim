autocmd Filetype vhdl call FT_vhdl()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 'Borrowed' VHDL Settings: http://0x7.ch/vim/vhdl/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FT_vhdl()
    " shortcuts
    imap <buffer> ,, <=
    imap <buffer> .. =>

    nmap <Leader>vy :let @v = shellescape(expand("%:p"))<CR>
    nmap <Leader>vs :let @t = system("ruby " . g:vhdl_parser_parse_dir . "vhdl_parse_ret.rb " . @v . " signals")<CR>"tp
    nmap <Leader>vc :let @t = system("ruby " . g:vhdl_parser_parse_dir . "vhdl_parse_ret.rb " . @v . " component")<CR>"tp
    nmap <Leader>vi :let @t = system("ruby " . g:vhdl_parser_parse_dir . "vhdl_parse_ret.rb " . @v . " instantiation")<CR>"tp

    imap <Leader>vy <Esc><Leader>vyi
    imap <Leader>vs <Esc><Leader>vsi
    imap <Leader>vc <Esc><Leader>vci
    imap <Leader>vi <Esc><Leader>vii


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

