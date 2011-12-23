" rmvim.vim plugin
" Author: Wannes Meert
" Url: http://people.cs.kuleuven.be/wannes.meert/
" Version: 1.0
" Date: 23/12/2011

if exists('s:loaded')
	finish
endif
let s:loaded = 1

if !exists('g:rmvim_cmd')
	let g:rmvim_cmd = 'mvim'
endif

if !exists('g:rmvim_verbose')
	let g:rmvim_verbose = 0
endif

let s:scriptpath = expand('<sfile>:p:h')

fu! RmvimListenerStart()
	let verbosestr = ''
	if g:rmvim_verbose == 1
		let verbosestr = '-v'
	endif
	let cmd = '!'.s:scriptpath.'/../util/rmvim_listener '.verbosestr.' -c '.g:rmvim_cmd.'&'
	exec cmd
endfu

com! -nargs=0 RmvimListenerStart :call RmvimListenerStart()

" Autorun at startup
redir! > /tmp/foobar
silent RmvimListenerStart
"RmvimListenerStart
"silent exe "normal :RmvimListenerStart<CR>"
redir END

