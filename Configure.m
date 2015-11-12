ROOT_PATH = '~/Documents/WorkSpace/Course/Advance Software Engineering/Algorithm';
DATA_SETS_TO_USE = [1];


%%  
global ROOT_PATH DATA_SETS_TO_USE V

V = struct();    
V.data_dir = 'Data';
V.data_file_prefix = 'P';
V.data_file_suffix = '.csv';
V.training_set_filename = 'trainingset';
V.testing_set_filename = 'testingset';
V.mat_suffix = '.matlab_format.mat';
V.required_fields ='all';


%{'head_xin3' ,
% 'head_yin3' ,
% 'head_zin3' ,
% 'shoulder_center_xin3' ,
% 'shoulder_center_yin3' , 
% 'shoulder_center_zin3' , 
% 'shoulder_left_xin3' , 
% 'shoulder_left_yin3' , 
% 'shoulder_left_zin3' , 
% 'shoulder_right_xin3' , 
% 'shoulder_right_yin3' , 
% 'shoulder_right_zin3' , 
% 'elbow_left_xin3' , 
% 'elbow_left_yin3' , 
% 'elbow_left_zin3' , 
% 'elbow_right_xin3' , 
% 'elbow_right_yin3' , 
% 'elbow_right_zin3'  , 
% 'hand_left_xin3' , 
% 'hand_left_yin3' , 
% 'hand_left_zin3' , 
% 'hand_right_xin3' , 
% 'hand_right_yin3' , 
% 'hand_right_zin3' , 
% 'spine_xin3' , 
% 'spine_yin3' , 
% 'spine_zin3' , 
% 'hip_center_xin3' , 
% 'hip_center_yin3' , 
% 'hip_center_zin3' , 
% 'hip_left_xin3' , 
% 'hip_left_yin3' , 
% 'hip_left_zin3' , 
% 'hip_right_xin3' , 
% 'hip_right_yin3' , 
% 'hip_right_zin3' , 
% 'class'
% };


V.class2num = struct('stand1', 1, 'standBHP', 2, 'standLHP', 3, 'standRHP', 4, 'standleanforward', 5, 'sitS', 6, 'sitSBHP',7,   'sitSLHP', 8, 'sitSRHP', 9, 'sitLf', 10, 'sitLfBHP', 11, 'sitLfLHP', 12, 'sitLfRHP', 13, 'sitLb', 14, 'sitLbBHP', 15, 'sitLbLHP', 16, 'sitLbRHP', 17, 'sitfloorS', 18, 'sitfloorSLHP', 19, 'sitfloorSBHP', 20, 'sitfloorSRHP', 21, 'sitfloorLfBHP', 22, 'sitfloorLfRHP', 23, 'sitfloorLfLHP', 24, 'sitfloorLf', 25 );




