fopen_create
===========

Opens a file for writing creating the folder hierarchy if required.

EXAMPLES
========

`new_path` directory will be created and `file.txt` opened for writing with `fileID`. 


    addpath('path_to_fopen_create/function/');

    fileID = fopen_create( 'new_path/file.txt' );
