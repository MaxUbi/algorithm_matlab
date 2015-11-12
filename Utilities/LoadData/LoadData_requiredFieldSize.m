function r = LoadData_requiredFieldSize(fields)
if strcmp(fields,'all') == 1
    r = 63;
    return
end

r = length(fields);

end