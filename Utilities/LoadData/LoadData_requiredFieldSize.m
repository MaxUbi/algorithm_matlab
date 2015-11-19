function r = LoadData_requiredFieldSize(fields)
if strcmp(fields,'all') == 1
    r = 63;
    return
end

if(LoadData_isRequiredField('class',fields))
    r = length(fields)-1;
else
    r = length(fields);
    fields{end+1} = 'class';
end



end