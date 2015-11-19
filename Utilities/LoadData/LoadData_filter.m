function [ r ] = LoadData_filter( result )
%LOADDATA_FILTER Summary of this function goes here
%   Detailed explanation goes here
    r = struct();
    lmt = 0;
    r.label = {};
    for i = 1:length(result.label)
        if(isempty(result.label{i}))
            lmt = i-1;
            break;
        else
            r.label{end+1} = result.label{i};
        end
    end
    r.data = result.data(1:lmt,1:end);
end

