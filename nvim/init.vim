function! Load(name)
    let fn='~/.config/nvim/' . a:name . '.vim'
    execute 'source ' . fnameescape(fn)
endfunction

call Load('plugins')
call Load('util')
call Load('settings')
call Load('style')
call Load('bindings')
call Load('line')
