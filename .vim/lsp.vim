function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes

  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
  nmap <buffer> gd <plug>(lsp-document-diagnostics)
  nmap <buffer> gs <plug>(lsp-document-symbol-search)
  nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> [ <plug>(lsp-previous-diagnostic)
  nmap <buffer> ] <plug>(lsp-next-diagnostic)
  nmap <buffer> K <plug>(lsp-hover)

  let g:lsp_format_sync_timeout = 1000
  autocmd! BufWritePre * call execute('Autoformat')
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


let g:lsp_diagnostics_signs_delay = 100
let g:lsp_diagnostics_virtual_text_delay = 100
let g:lsp_diagnostics_highlights_delay = 100
let g:lsp_diagnostics_float_delay = 100

let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 1

let g:lsp_diagnostics_signs_error = {'text': ''}
let g:lsp_diagnostics_signs_warning = {'text': ''}
let g:lsp_diagnostics_signs_hint = {'text': ''}
let g:lsp_diagnostics_signs_information = {'text': ''}
