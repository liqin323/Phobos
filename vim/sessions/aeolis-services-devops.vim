" ~/Works/Phobos/vim/sessions/aeolis-services-devops.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 10 March 2017 at 18:09:54.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=Consolas\ 13
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'neodark' | colorscheme neodark | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/orico/Works/Aeolis/AeolisDevOpsRepository
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 \[BufExplorer]
badd +1 安装文档/CentOS6.5安装nginx步骤.txt
badd +3 ansible/mysql.yml
badd +1 ansible/r.yml
badd +1 ansible/tomcat.yml
badd +0 ansible/web.yml
badd +0 auto-deployment/ansible-script/roles/system-config/tasks/main.yml
badd +1 auto-deployment/ansible-script/appsvc-deploy.yml
badd +1 auto-deployment/ansible-script/roles/appsvr/files/supervisord.conf
badd +22 auto-deployment/ansible-script/roles/appsvr/templates/profile.j2
badd +0 auto-deployment/ansible-script/roles/appsvr/templates/profile.en.j2
badd +16 auto-deployment/hosts/develop/appsvc-hosts
badd +1 auto-deployment/ansible-script/roles/supervisor/tasks/main.yml
badd +1 auto-deployment/ansible-script/appsvc-deploy.retry
badd +41 auto-deployment/ansible-script/roles/appsvr/tasks/main.yml
badd +3 auto-deployment/ansible-script/appsvc-update.yml
badd +1 auto-deployment/ansible-script/supervisor-deploy.yml
badd +37 auto-deployment/ansible-script/roles/supervisor/files/supervisord.conf
badd +14 auto-deployment/hosts/develop/rabbitmq-cluster-hosts
badd +0 auto-deployment/ansible-script/rabbitmq-cluster-deploy.yml
args \[BufExplorer]
edit auto-deployment/ansible-script/roles/appsvr/tasks/main.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 15 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 90 + 106) / 213)
exe '3resize ' . ((&lines * 15 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 90 + 106) / 213)
exe '4resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 90 + 106) / 213)
exe '5resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 90 + 106) / 213)
exe '6resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 6resize ' . ((&columns * 181 + 106) / 213)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 063|
wincmd w
argglobal
edit auto-deployment/ansible-script/roles/appsvr/templates/profile.en.j2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
edit auto-deployment/hosts/develop/appsvc-hosts
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit auto-deployment/hosts/develop/rabbitmq-cluster-hosts
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 021|
wincmd w
argglobal
edit auto-deployment/ansible-script/rabbitmq-cluster-deploy.yml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 04|
wincmd w
5wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 15 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 90 + 106) / 213)
exe '3resize ' . ((&lines * 15 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 90 + 106) / 213)
exe '4resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 90 + 106) / 213)
exe '5resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 90 + 106) / 213)
exe '6resize ' . ((&lines * 14 + 24) / 48)
exe 'vert 6resize ' . ((&columns * 181 + 106) / 213)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/orico/Works/Aeolis/AeolisDevOpsRepository
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 45|vert 1resize 31|2resize 15|vert 2resize 90|3resize 15|vert 3resize 90|4resize 14|vert 4resize 90|5resize 14|vert 5resize 90|6resize 14|vert 6resize 181|
5wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
