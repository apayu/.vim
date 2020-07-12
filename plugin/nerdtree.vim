nnoremap <silent> <C-n> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
