function [ output_args ] = LoadData_isClassField( input_args )
%LOADDATA_ISCLASSFIELD Summary of this function goes here
%   Detailed explanation goes here

if strcmp(strtrim(input_args),'class') == 1
    output_args = true;
    return
end
output_args = false;


end

