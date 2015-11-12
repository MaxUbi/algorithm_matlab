function [ r ] = LoadData_isRequiredField( field, fields )
%LOADDATA_ISREQUIREDFIELD Summary of this function goes here
%   Detailed explanation goes here
if strcmp(fields,'all') == 1
    r = true;
    return
end

r = false;
for i = 1:length(fields)
    if(strcmp(fields{i},strtrim(field)) == 1)
        r = true;
        break;
    end
end
end

