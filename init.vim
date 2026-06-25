set number
set laststatus=1
set list
set listchars=tab:..,trail:-
set splitbelow
set splitright
set scrolloff=2
set tabstop=4
set shiftwidth=0
set softtabstop=-1
set background=dark
let g:netrw_banner = v:false
let g:netrw_list_hide = '^\./$,^\.git/$'
augroup vimrc
	autocmd!
	autocmd FileType vim,html,css,xml setlocal tabstop=2 expandtab
	autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
	if has('nvim')
		autocmd FileType * lua pcall(vim.treesitter.start)
	endif
augroup END
colorscheme retrobox
