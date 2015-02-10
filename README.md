fopen_create
===========

Opens a file for writing, creating the folder hierarchy if required.

Example
--

`new_path` directory will be created and `file.txt` opened for writing with `fileID`. 

    fileID = fopen_create( 'new_path/file.txt' );


Installation
--

To get library clone from github:

    cd to your lib folder
    git clone https://github.com/Matlab-Toolbox/fopen_create.git

Add package to path:

    %% Add package to path
    run(['/path_to_package/fopen_create/load_toolbox.m']);
