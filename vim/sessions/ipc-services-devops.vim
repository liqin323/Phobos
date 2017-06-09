" ~/Works/Phobos/vim/sessions/ipc-services-devops.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 13 December 2016 at 23:48:42.
" Open this file in Vim and run :source % to restore your session.

set guioptions=agirLt
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
cd ~/Works/ipc-services-devops/auto-deployment
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +318 ~/.vimrc
badd +119 ysx-gce-dev-hosts
badd +5 appsvc-deploy.yml
badd +33 roles/appsvr/tasks/main.yml
badd +6 bash\ -\ 2
badd +398 bash\ -\ 4
badd +1 bash\ -\ 5
badd +1 haproxy-deploy.yml
badd +1 appsvc-update.yml
badd +37 basic-service-deploy.yml
badd +1 mongodb-rep.yml
badd +5 p2p-deploy.yml
badd +1 relay-deploy.yml
badd +15 relay-deploy-haproxy.yml
badd +32 tm-deploy.yml
badd +34 tm-update.yml
badd +17 versvr-deploy.yml
badd +16 versvr-update.yml
badd +1 appsvr-hosts
badd +15 p2p-update.yml
badd +202 bash\ -\ 1
badd +416 tags
badd +1 examples/jboss-standalone/site.yml
badd +1 examples/lamp_haproxy/site.yml
badd +1 examples/lamp_haproxy/group_vars/all
badd +2 examples/lamp_haproxy/group_vars/dbservers
badd +1 examples/lamp_haproxy/group_vars/lbservers
badd +1 examples/lamp_haproxy/group_vars/webservers
badd +1 examples/lamp_haproxy/hosts
badd +1 examples/lamp_haproxy/roles/base-apache/tasks/main.yml
badd +1 examples/lamp_haproxy/roles/haproxy/templates/haproxy.cfg.j2
badd +1 examples/lamp_haproxy/roles/haproxy/tasks/main.yml
badd +1 examples/lamp_haproxy/roles/nagios/tasks/main.yml
badd +64 examples/lamp_haproxy/roles/nagios/files/nagios.cfg
badd +1 examples/lamp_haproxy/roles/web/tasks/main.yml
badd +22 examples/mongodb/group_vars/all
badd +1 examples/mongodb/hosts
badd +1 examples/mongodb/roles/common/templates/hosts.j2
badd +7 examples/mongodb/roles/common/tasks/main.yml
badd +1 examples/mongodb/playbooks/testsharding.yml
badd +1 examples/mongodb/images/check.png
badd +1 examples/wordpress-nginx/hosts.example
badd +1 examples/wordpress-nginx/site.yml
badd +1 examples/wordpress-nginx/group_vars/all
badd +1 examples/wordpress-nginx_rhel7/group_vars/all
badd +4 ~/Works/ipc-services-devops/vagrant/reame.txt
badd +70 ~/Works/ipc-services-devops/vagrant/Vagrantfile
badd +1878 bash\ -\ 3
badd +1 group_vars/all
badd +5 group_vars/rabbitmq_cluster
badd +1 examples/jboss-standalone/group_vars/jboss-servers
badd +38 roles/rabbitmq-install/tasks/main.yml
badd +1 roles/rabbitmq-configure/tasks/main.yml
badd +1 roles/rabbitmq-configure/templates/.erlang.cookie.j2
badd +1 roles/rabbitmq-configure/templates/host.j2
badd +1 rabbitmq-cluster-hosts
badd +7 rabbitmq-cluster.yml
badd +4 group_vars/mongodb
badd +2 mongodb-replica-hosts
badd +1 examples/lamp_simple/group_vars/all
badd +1 examples/lamp_simple/group_vars/dbservers
badd +1 examples/lamp_simple_rhel7/group_vars/all
badd +1 examples/lamp_simple_rhel7/group_vars/dbservers
badd +22 roles/mongodb-replica/templates/setup.js.j2
badd +2 roles/mongodb-replica/templates/spvd.conf.j2
badd +26 roles/mongodb-replica/tasks/main.yml
badd +7 mongodb-replica-deploy.yml
badd +2 rabbitma-cluster-deploy.yml
badd +4 mongodb-data-migrate.yml
badd +3 roles/mongodb-migration/tasks/main.yml
badd +1 group_vars/mongodb-migration
badd +1 group_vars/mongodb-data-migration
badd +8 group_vars/rabbitmq-cluster
badd +23 group_vars/appsvc
badd +5 appsvc-hosts
badd +4 group_vars/appsvc-asia
badd +5 group_vars/appsvc-us
badd +23 roles/appsvr/templates/gen-mongodbs-ips.j2
badd +35 roles/appsvr/templates/profile.j2
badd +2 roles/appsvr/templates/spvd.conf.j2
badd +1 roles/relaysvr/templates/nsca_config.ini.j2
badd +32 roles/relaysvr/tasks/main.yml
badd +15 roles/supervisor/tasks/main.yml
badd +4 supervisor-hosts
badd +7 supervisor-deploy.yml
badd +1 relay-svc-hosts
badd +1 relaysvc-hosts
badd +22 roles/haproxy/tasks/main.yml
badd +51 roles/haproxy/files/haproxy.cfg
badd +1 roles/haproxy/files/deploy.sh
badd +5 tmsvc-hosts
badd +1 group_vars/tmsvc-asia
badd +1 group_vars/tmsvc
badd +1 group_vars/tmsvc-us
badd +6 tmsvc-deploy.yml
badd +6 tmsvc-update.yml
badd +23 roles/tmsvr/tasks/main.yml
badd +2 roles/tmsvr/templates/spvd.conf.j2
badd +1 roles/tmsvr/templates/profile.j2
badd +14 roles/key-creation/tasks/main.yml
badd +1 readme.txt
badd +1 roles/logsvr/tasks/main.yml
badd +18 roles/logsvr/files/deploy.sh
badd +1 relaysvc-update.yml
badd +7 ycloud/main.go
badd +265 ycloud/src/ysx.com/ycloud/main.go
badd +8 ansible-scripts/appsvc-deploy.yml
badd +189 ycloud/bin/ycloud.yml
badd +2 ansible-scripts/group_vars/all
badd +2 ansible-scripts/group_vars/appsvc-asia
badd +1 ansible-scripts/group_vars/appsvc-us
badd +2 ansible-scripts/group_vars/appsvc
badd +1 ansible-scripts/appsvc-hosts
badd +20 ansible-scripts/roles/rabbitmq-configure/tasks/main.yml
badd +9 ycloud/bin/appsvc-hosts.tpl
badd +210 ycloud/src/github.com/go-ini/ini/ini.go
badd +43 ycloud/src/github.com/go-ini/ini/section.go
badd +30 ycloud/src/github.com/go-ini/ini/key.go
badd +294 ycloud/src/github.com/go-ini/ini/parser.go
badd +1 ycloud/bin/appsvc-hosts
badd +27 ycloud/bin/appsvc-hosts-World-Wide
badd +1 ansible-scripts/supervisor-hosts
badd +5 ansible-scripts/group_vars/mongodb
badd +1 ansible-scripts/group_vars/mongodb-data-migration
badd +2 ansible-scripts/mongodb-replica-hosts
badd +102 ~/Program/go/src/os/exec/exec.go
badd +1 ansible-scripts/rabbitmq-cluster-hosts
badd +6 ansible-scripts/group_vars/rabbitmq-cluster
badd +2 ansible-scripts/group_vars/relaysvc-cn-south
badd +2 ansible-scripts/group_vars/relaysvc-cn-south-1
badd +3 ycloud/bin/asia-east-services-hosts
badd +1 ansible-scripts/relaysvc-hosts
badd +1 ycloud/bin/WorldWide-rabbitmq-cluster-hosts
badd +118 ycloud/bin/WorldWide-asia-east-services-hosts
badd +1 ycloud/bin/WorldWide-mongodb-replica-hosts
badd +2 ansible-scripts/group_vars/relaysvc
badd +1 ansible-scripts/group_vars/relaysvc-cn-south-2
badd +2 ansible-scripts/group_vars/haproxy-relay
badd +1 ansible-scripts/tmsvc-hosts
badd +3 ansible-scripts/group_vars/tmsvc
badd +1 ansible-scripts/group_vars/tmsvc-asia
badd +1 ansible-scripts/group_vars/tmsvc-us
badd +2 ansible-scripts/group_vars/tmsvc-cn-south
badd +13 ansible-scripts/roles/tmsvr/tasks/main.yml
badd +1 ansible-scripts/log-deploy.yml
badd +1 ansible-scripts/roles/logsvr/tasks/main.yml
badd +89 ycloud/bin/WorldWide-asia-southeast-services-hosts
badd +6 ansible-scripts/versvr-deploy.yml
badd +44 ansible-scripts/roles/logsvr/files/deploy.sh
badd +113 ansible-scripts/ysx-gce-dev-hosts
badd +9 ansible-scripts/p2p-deploy.yml
badd +1 ansible-scripts/readme.txt
badd +4 gcloud/vm_create.sh
badd +20 gcloud/hosts
badd +1 ansible-scripts/rabbitmq-cluster-deploy.yml
badd +1 ansible-scripts/WorldWide-rabbitmq-cluster-hosts
badd +1 ansible-scripts/roles/rabbitmq-configure/templates/host.j2
badd +36 ansible-scripts/roles/appsvr/templates/profile.en.j2
badd +5 ansible-scripts/group_vars_bk/rabbitmq-cluster
badd +1 ansible-scripts/group_vars_bk/appsvc-asia
badd +15 ansible-scripts/group_vars_bk/appsvc
badd +34 ansible-scripts/roles/appsvr/templates/profile.cn.j2
badd +1 ansible-scripts/WorldWide-mongodb-replica-hosts
badd +12 ansible-scripts/roles/mongodb-replica/tasks/main.yml
badd +7 ansible-scripts/mongodb-replica-deploy.yml
badd +1 ansible-scripts/WorldWide-asia-east-services-hosts
badd +5 ansible-scripts/roles/appsvr/tasks/main.yml
badd +1 ansible-scripts/appsvc-update.yml
badd +1 gcloud/rbq-hosts
badd +9 ansible-scripts/tmsvc-deploy.yml
badd +10 ansible-scripts/relaysvc-deploy.yml
badd +25 ansible-scripts/roles/haproxy/tasks/main.yml
badd +53 ansible-scripts/roles/haproxy/templates/haproxy.cfg.j2
badd +33 ansible-scripts/roles/haproxy/files/deploy.sh
badd +6 ansible-scripts/relaysvc-update.yml
badd +20 ansible-scripts/roles/relaysvr/tasks/main.yml
badd +1 ansible-scripts/roles/p2psvr/tasks/main.yml
badd +6 ansible-scripts/roles/p2psvr/templates/spvd.conf.j2
badd +1 gcloud/log-hosts
badd +1 gcloud/ver-hosts
badd +1 ansible-scripts/roles/relaysvr/templates/spvd.conf.j2
badd +1 ansible-scripts/roles/relaysvr/templates/nsca_config.ini.j2
badd +1 ansible-scripts/roles/relaysvr/templates/relay.json.j2
badd +1 ansible-scripts/roles/key-creation/files/createKey.py
badd +1 ansible-scripts/roles/key-creation/tasks/main.yml
badd +2 gcloud/vm_create_logsvc.sh
badd +1 ycloud/bin/WorldWide-asia-east-log-service-hosts
badd +25 ycloud/bin/WorldWide-asia-east-version-service-hosts
badd +1 ansible-scripts/roles/versvr/templates/profile.j2
badd +1 ansible-scripts/roles/versvr/templates/spvd.conf.j2
badd +1 ansible-scripts/versvr-update.yml
badd +7 ansible-scripts/roles/system-config/tasks/main.yml
badd +1 ansible-scripts/roles/supervisor/tasks/main.yml
badd +8 ansible-scripts/system-config.yml
badd +7 ansible-scripts/appsvc-restart.yml
badd +5 ansible-scripts/restart-appsvc-all.sh
badd +23 ansible-scripts/configure-system-all.sh
badd +6 ansible-scripts/supervisor-deploy.yml
badd +123 ycloud/bin/WorldWide-us-west-services-hosts
badd +37 ycloud/bin/WorldWide-supervisor-hosts
badd +5 supervisor-restart.yml
badd +4 ansible-scripts/supervisor-restart.yml
badd +20 gcloud/ww-services-host
badd +1 ansible-scripts/roles/supervisor/files/supervisord.conf
badd +0 __Tagbar__
badd +6 cloud-platform/WorldWide-test/WorldWide-test-asia-east-log-service-hosts
badd +1 ansible-scripts/roles/appsvr/templates/gen-mongodbs-ips.j2
badd +0 ansible-scripts/roles/appsvr/templates/spvd.conf.j2
args relaysvc-hosts
edit ansible-scripts/roles/appsvr/templates/spvd.conf.j2
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 35 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 177 + 106) / 213)
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
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 35 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 177 + 106) / 213)
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
NERDTree ~/Works/ipc-services-devops/auto-deployment
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 31|vert 1resize 35|2resize 31|vert 2resize 177|
1wincmd w
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
