function Keymap(mode, key, command)
    if a:mode == "m"
        let l:modetype = "map"
    endif

    if a:mode == "n"
        let l:modetype = "nnoremap"
    endif

    if a:mode == "i"
        let l:modetype = "inoremap"
    endif

    if a:mode == "v"
        let l:modetype = "vnoremap"
    endif

    execute ':' . ' '. l:modetype . ' ' . a:key . ' ' . a:command
endfunction

" [MODES]
" m = map
" i = insert
" v = visual

"_-_-_-_-_-_-_-_-_- -[MAP MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

call Keymap("m", "\eh", "^")
call Keymap("m", "\el", "g_")

call Keymap("m", "<C-o>", "{")
call Keymap("m", "<C-i>", "}")

call Keymap("m", "<C-\\>", "<CMD>FloatermToggle<CR>")

call Keymap("m", "<F5>", "<CMD>source ~/.vimrc<CR>")

"_-_-_-_-_-_-_-_-_- -[NORMAL MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_-_
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

call Keymap("n", "<C-s>", "<CMD>w<CR>")
call Keymap("n", "<C-c>", "<CMD>WintabsClose<CR>")

call Keymap("n", "<C-f>", "/")

call Keymap("n", "dr", "<C-.>")

call Keymap("n", "O", "O<ESC>")
call Keymap("n", "o", "o<ESC>")

call Keymap("n", "\ej", "<CMD>m+<CR>")
call Keymap("n", "\ek", "<CMD>m-2<CR>")

call Keymap("n", "<S-l>", "<CMD>WintabsNext<CR>")
call Keymap("n", "<S-h>", "<CMD>WintabsPrevious<CR>")

call Keymap("n", "<C-h>", "<C-w>h")
call Keymap("n", "<C-l>", "<C-w>l")
call Keymap("n", "<C-j>", "<C-w>j")
call Keymap("n", "<C-k>", "<C-w>k")

call Keymap("n", "<C-p>", "<CMD>FZF<CR>")

"_-_-_-_-_-_-_-_-_- -[INSERT MODE]- _-_-_-_-_-_-_-_-_--_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

call Keymap("i", "jj", "<ESC>")

"_-_-_-_-_-_-_-_-_- -[VISUAL MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_--
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

