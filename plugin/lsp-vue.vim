" see https://github.com/vuejs/vetur/tree/master/server
if executable('vls')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'vue-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vls --stdio']},
        \ 'whitelist': ['vue'],
        \ })
else
  echohl ErrorMsg
  echom 'Sorry, `vue-language-server` is not installed. See :h vim-lsp-vue for more details on setup.'
  echohl NONE
endif
