global DATA MODEL_LIST V ROOT_PATH  DATA_SETS_TO_USE
MODEL = cell(1,length(DATA_SETS_TO_USE));


for i = 1:length(DATA)
    r = DATA{i};  
    m = fitcecoc(r.train.data,r.train.label);
    MODEL_LIST{end+1} = struct('num',r,'model',m);
end

model_list_path = Train_Model_Path(ROOT_PATH,V.data_dir,'our_first_model.mat');
save(model_list_path,'MODEL_LIST');