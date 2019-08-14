" see https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Css
if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \ 'whitelist': ['css', 'less', 'sass'],
        \ })
else
  echohl ErrorMsg
  echom 'Sorry, `css-languageserver` is not installed. See :h vim-lsp-css for more details on setup.'
  echohl NONE
endif
