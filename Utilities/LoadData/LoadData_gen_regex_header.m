function [ r ] = LoadData_gen_regex_header(num)
%LOADDATA_GEN_REGEX_COL Summary of this function goes here
%   Detailed explanation goes here
if nargin == 0
   num = 64; 
end

%%% ======================= %%%
i = 0;
r = '';
while(i<num-1)
    r = strcat(r,'%[^,],');
    i = i+1;
end
r = strcat(r, '%[^,\r\n]');

end

