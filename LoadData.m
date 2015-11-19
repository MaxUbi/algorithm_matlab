global DATA V ROOT_PATH  DATA_SETS_TO_USE CACHE
DATA = cell(1,length(DATA_SETS_TO_USE));
count = 1;
for i = DATA_SETS_TO_USE
    p_train = LoadData_mkpath(ROOT_PATH,V.data_dir,V.data_file_prefix,...
        i,V.training_set_filename,V.data_file_suffix);
    
    mp_train = strcat(p_train, V.mat_suffix);
    
    p_test = LoadData_mkpath(ROOT_PATH,V.data_dir,V.data_file_prefix,...
        i,V.testing_set_filename,V.data_file_suffix);
    
    mp_test = strcat(p_test, V.mat_suffix);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if exist(mp_train, 'file') && CACHE       
        load(mp_train,'d_train')
    else
        d_train = LoadData_csvread(p_train);
        save(mp_train,'d_train');
    end
    
    
    if exist(mp_test, 'file') && CACHE
        load(mp_test,'d_test')
    else
        d_test = LoadData_csvread(p_test);
        save(mp_test,'d_test');
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    DATA{count} = struct('num',i,'train',d_train,'test',d_test);
    count = count + 1;
end



clear 'count' 'p_train' 'p_test' 'd_train' 'd_test' 'mp_train' 'mp_test'