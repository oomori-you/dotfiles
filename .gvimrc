set lines=100
set columns=300

syntax enable
set background=dark
colorscheme desert

hi Pmenu guifg=#000000 guibg=#dddddd
hi PmenuSel guifg=#222222 guibg=#7066FF
hi PmenuSbar guifg=#000000 guibg=#FFFFFF
hi LineNr ctermbg=black guifg=#8F908A

set guifont=Ricty:h15

autocmd VimEnter * VimFilerExplorer -winwidth=30  /Users/oomori/prj
vsplit

