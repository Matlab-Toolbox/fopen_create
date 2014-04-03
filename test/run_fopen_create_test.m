
  %% run_spec
  clear;
  %% Clear import list to test correct library
  clear import; 


  %% For Functions
  %    Add function to path
  addpath('../function/');

  %% Test Vectors
  test = {};
  test(end+1).input = 'b/b.txt'  ; 
  test(end+1).input = 'c/c/c.txt';


  %% The tests
  error_count = 0;
  pass_count  = 0;

  for vector=1:size(test, 2)
    fileID  = fopen_create( test(vector).input );
    created = exist(        test(vector).input );
    if ( ~created )
      disp('fopen_create() Failed ')
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

