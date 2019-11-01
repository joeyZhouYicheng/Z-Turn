# vim插件的开发

```vim
"easylog.vim - log vaiable easily
" Author: Joey
" Version: 0.0.0

if exists("g:loaded_easylog") || v:version < 700
  finish
endif
let g:loaded_easylog = 1


function! Js_log()
  execute 'normal! yiwoconsole.log(\"\epi\", \epi)\"'
endfunction
noremap <buffer> <localleader>l :call Js_log()<cr>
```



## 参考

- [写插件注意事项](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)
- [笨办法学vim - 插件](http://learnvimscriptthehardway.onefloweroneworld.com/chapters/41.html)
- [插件写作](https://blog.semanticart.com/2017/01/05/lets-write-a-basic-vim-plugin/)
- [vim用户手册](http://vimcdoc.sourceforge.net/doc/usr_toc.html)

