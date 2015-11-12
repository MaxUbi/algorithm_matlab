function [result] = LoadData_csvread(path)
global V
fid = fopen(path);
data = textscan(fid,LoadData_gen_regex_header() ,Inf);
rows_len = length(data{1})-1;


result = struct();
result.data = zeros(rows_len, LoadData_requiredFieldSize(V.required_fields));
result.label = cell(1, rows_len);


try
    for i  = 1:length(data);
        d = data{i};
        field  = d{1};
        if(LoadData_isRequiredField(field,V.required_fields))
            
            if LoadData_isClassField(field)
                for j = 2:length(d)
                    result.label{j-1} = d{j};
                end
            else
                for j = 2:length(d)
                    result.data(j-1,i) = str2num(d{j});
                end
                
            end
        end
    end
    
catch er
    er
end

fclose(fid);
end