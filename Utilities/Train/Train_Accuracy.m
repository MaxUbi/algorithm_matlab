function [ output_args, result] = Train_Accuracy( l1,l2 )
%TRAIN_ACCURACY Summary of this function goes here
%   Detailed explanation goes here
    if(iscell(l1) && iscell(l2))
        result = zeros(1,length(l1));
        
        for i = 1:length(l1)            
            if strcmp(l1{i}, l2{i}) == 1
                result(i) = 1;
            end
        end        
    else
        result = (l1 == l2);       
    end
     output_args = (sum(result)/length(l1))*100;
end

