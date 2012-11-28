Version
=======
Version 0.2

Requirements
============
 * better-require
 * posix-getopt

Install
=======
I just create a ~/lib/site_node directory, symlink the code files in node_modules there,
then I symlink the trash-cli.coffee to ~/bin/trash

There's really nothing much more fancy, but I wanted a way of playing with CoffeeScript, and this sort of script is useful.

Note
====
This is experimental code... you really should be careful when using it.

Usage
=====
$ trash somefile.txt somedirectory

$ trash empty