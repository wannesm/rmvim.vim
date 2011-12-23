RMVIM
=====

Summary
-------

Vim GUI (MacVim, GVim) plugin to make remote editing more easy.


Requirements
------------

This script is meant to be used with MacVim or GVim on a Mac or linux system. 
It makes use of the Netrw functionallity of vim.


Installation
------------

1. Install the rmvim.vim plugin in your local .vim directory.
2. Copy the file `rmvim.vim/util/rmvim` to your remote host in a directory that
   is in your path.
3. If you want to use gvim instead of mvim add the following to your .vimrc:  
   `set g:rmvim_cmd = 'gvim'`


Usage
-----

Open a MacVim instance at least once. If this plugin is installed, this will
automatically activate a listener (an instance of the `nc` command).

Open a connection to your remote host with the command

    ssh -R 52699:localhost:52699 yourhost

On your remote host start editing a file with the following command:

    rmvim ./path/to/file

The remote file opens locally in MacVim.


Contact
-------
Wannes Meert  
<http://people.cs.kuleuven.be/wannes.meert>


License
-------

FreeBDS License
Copyright (c) 2011, Wannes Meert (KULeuven). All rights reserved.

