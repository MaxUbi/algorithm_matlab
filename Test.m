global DATA MODEL_LIST TEST_RESULT

TEST_RESULT = {};

for i = 1:length(DATA)
    r = DATA{i}; 
    m = MODEL_LIST{i};
    [label,score] = predict(m.model,r.test.data);
    [percent, results] = Train_Accuracy(r.test.label,label);    
    fprintf('Data Set No %d ---  Accuracy: %f%% \n',r.num,percent);
    TEST_RESULT{end+1} = struct('num',r.num,'accuracy',percent,'results',results);    
end

clear 'percent' 'label' 'score' 'm' 'r' 'i'  'results'