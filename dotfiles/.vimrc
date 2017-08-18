"'' Sources mentioned on each section. 
"
" Source - Matthew Zozniski
" https://github.com/godlygeek/vim-files/blob/master/.vimrc
"
" Stop behaving like vi - vim enahncements are better
set nocompatible
filetype off

"""" Mouse , keyborad and Terminal
set mouse=nv	"Allow mouse use in normal and visual mode.
set lazyredraw

""" Backup and swap files
if ! len(glob("~/.vimbackup/"))
	echomsg "Back up directory doesn't exist"
endif
set writebackup               " make a backup of orginal file when writing
set backup                    " and dont delete it after write
set backupskip=               " there are no files that shouldnt be backed up
set updatetime=2000           " write swap files after 2 sec inactivity
set backupext=~               " back up for file is file~
set backupdir^=~/.vimbackup   " Backups are written to .vimbackup/if possible.
set directory^=~/.vimbackup// " swap files are also written to .vimbackup.

"Source vundle set upGithub page.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'fountain.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme molokai

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1

    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
