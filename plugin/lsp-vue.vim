" see https://github.com/vuejs/vetur/tree/master/server
" see https://gist.github.com/yaegassy/57e50125e9c6488581c4b8fe608ce194
if executable('vls')
    augroup LspVls
        au!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'vue-language-server',
            \ 'cmd': {server_info->['vls']},
            \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
            \ 'whitelist': ['vue'],
            \ 'initialization_options': {
            \         'config': {
            \             'html': {},
            \              'vetur': {
            \                  'validation': {}
            \              }
            \         }
            \     }
            \ })
    augroup end
else
  echohl ErrorMsg
  echom 'Sorry, `vue-language-server` is not installed. See :h vim-lsp-vue for more details on setup.'
  echohl NONE
endif
