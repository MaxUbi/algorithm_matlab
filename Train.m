global DATA MODEL_LIST V ROOT_PATH  DATA_SETS_TO_USE CACHE
MODEL_LIST = {};

model_list_path = Train_Model_Path(ROOT_PATH,V.data_dir,'model_list.mat');
if exist(model_list_path, 'file') && CACHE
    load(model_list_path,'MODEL_LIST')
else
    for i = 1:length(DATA)
        r = DATA{i};
        m = fitcsvm(r.train.data,r.train.label);
        MODEL_LIST{end+1} = struct('num',r,'model',m);
    end    
    save(model_list_path,'MODEL_LIST');
end

clear 'model_list_path'