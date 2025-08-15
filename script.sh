rm ~/.vimrc
echo -e "inoremap jk <ESC>\ninoremap {<CR> {<CR>}<C-O>O\n\nset number relativenumber noswapfile hlsearch ignorecase incsearch showcmd\nset tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab autoindent\n\nautocmd filetype cpp nnoremap <F7> :w <bar> !g++ % -Wall -Wextra -Wshadow -Wconversion -Wlogical-op -Wshift-overflow=2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -std=c++20 -o %:r && ./%:r <CR>\nautocmd filetype cpp nnoremap <F8> :w <bar> !g++ % (flags) -o %:r && ./%:r < ./in.txt <CR>\n\nsyntax on\nsyntax enable\nfiletype plugin indent on\ncolorscheme gruvbox\nset background=light" >> ~/.vimrc 
mkdir -p ~/.vim/colors
curl -O https://raw.githubusercontent.com/morhetz/gruvbox/refs/heads/master/colors/gruvbox.vim
mv ./gruvbox.vim ~/.vim/colors
# Script by Maxwell
