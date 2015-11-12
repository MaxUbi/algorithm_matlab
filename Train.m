global DATA MODEL
MODEL = cell(1,length(DATA_SETS_TO_USE));


for i = 1:length(DATA)
    r = DATA{i};
    MODEL{end+1} = fitcsvm(r.data,r.label);
end