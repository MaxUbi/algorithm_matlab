function [ field_name ] = LoadData_remapClass( cl )
%LOADDATA_REMAPCLASS Summary of this function goes here
%   Detailed explanation goes here
global V

cl = strtrim(cl);
try
    field_name = getfield(V.class_remap, cl);
catch 
    field_name = false;
end

end

