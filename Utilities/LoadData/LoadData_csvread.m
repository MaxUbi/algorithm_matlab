function [result] = LoadData_csvread(path)
global V
fid = fopen(path);
data = textscan(fid,LoadData_gen_regex_header() ,Inf);
rows_len = length(data{1})-1;


result = struct();
result.data = zeros(rows_len, LoadData_requiredFieldSize(V.required_fields));
result.label = cell(1, rows_len);


try
    offset = 0;
    for i  = 1:length(data);
        d = data{i};
        field  = d{1};
        
        if(LoadData_isRequiredField(field,V.required_fields))
            
            if LoadData_isClassField(field)
                for j = 2:length(d)
                    remaped_class_name = LoadData_remapClass(d{j});
                    if(remaped_class_name)                    
                        result.label{j-1} = remaped_class_name;
                    end
                end
            else
                for j = 2:length(d)                                                           
                    result.data(j-1,i-offset) = str2num(d{j});
                end
                
            end
        else
            offset = offset + 1;
        end
    end
    
    result = LoadData_filter(result);
    
    
catch er
    er
end

fclose(fid);
end