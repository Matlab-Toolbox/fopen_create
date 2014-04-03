
function [ file_id, errmsg ] = fopen_create( file )
%FOPEN_CREATE Opens a file for writing and creating folder when required.
%  fopen_create calls fopen for write, 
%  and creates the path if it does not exist.
% 
%  Usage : fileID          =  fopen_create( file )
%         [fileID, errmsg] =  fopen_create( file )

  %% Extract Parent Folder
  folder = fileparts(file);
  
  %% Check If folder exists if not create it
  %  mkdir works like unix mkdir -p 
  if ~isdir( folder )
    mkdir( folder );
  end

  %% Now Call fopen
  [file_id, errmsg]  = fopen( file, 'w' );
end
