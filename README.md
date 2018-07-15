RMVIM
=====

Summary
-------

Vim GUI (MacVim, GVim) plugin to make remote editing more easy (based on
TextMate 2.0's rmate feature).


Requirements
------------

This script is meant to be used with MacVim or GVim on a Mac or linux system. 
It uses the Netrw functionality of vim to remotely edit files.


Installation
------------

1. Install the rmvim.vim plugin in your local .vim directory.  
   Or use a plugin system such as Plug: `Plug 'wannesm/rmvim.vim`
2. Copy the file `rmvim.vim/util/rmvim` to your remote host to a directory that
   is in your path.
3. If you want to use gvim instead of mvim add the following to your .vimrc:  
   `let g:rmvim_cmd = 'gvim'`  
   Other options include `vimr`, ...


Usage
-----

Open a MacVim or GVim instance at least once. If this plugin is installed, this
will automatically activate a listener (an instance of the `nc` command).

Open a connection to your remote host with the command

    ssh -R 52699:localhost:52699 yourhost

On your remote host start editing a file with the following command:

    rmvim ./path/to/file

The remote file opens locally in MacVim.


Contact
-------

Wannes Meert  
<http://people.cs.kuleuven.be/wannes.meert>


Credits
-------

With contributions from:

- [Sven Herzberg](https://github.com/herzi)
- [John Leen](https://github.com/jleen)
- [thehunmokngroup](https://github.com/thehunmonkgroup)
- [Keith Smiley](https://github.com/keith)


License
-------

FreeBSD License  
Copyright (c) 2011-2018, Wannes Meert (KU Leuven). All rights reserved.

