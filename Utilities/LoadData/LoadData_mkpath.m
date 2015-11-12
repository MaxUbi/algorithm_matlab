function [p] = LoadData_mkpath(root_path,data_dir,prefix, num,suffix,ext)
    p = fullfile(root_path,data_dir,strcat(prefix, num2str(num),suffix,ext));
end