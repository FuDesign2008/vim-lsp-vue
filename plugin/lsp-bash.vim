if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
else
  echohl ErrorMsg
  echom 'Sorry, `bash-language-server` is not installed. See :h vim-lsp-bash for more details on setup.'
  echohl NONE
endif
