global ROOT_PATH DATA_SETS_TO_USE V CACHE


%%
ROOT_PATH = '~/Documents/WorkSpace/Course/Advance Software Engineering/Algorithm';
DATA_SETS_TO_USE = [1];
CACHE = true;


%%


V = struct();
V.data_dir = 'Data';
V.data_file_prefix = 'P';
V.data_file_suffix = '.csv';
V.training_set_filename = 'trainingset';
V.testing_set_filename = 'testingset';
V.mat_suffix = '.matlab_format.mat';
V.required_fields = {'head_xin3' ,
    'head_yin3' ,
    'head_zin3' ,
    'shoulder_center_xin3' ,
    'shoulder_center_yin3' ,
    'shoulder_center_zin3' ,
    'shoulder_left_xin3' ,
    'shoulder_left_yin3' ,
    'shoulder_left_zin3' ,
    'shoulder_right_xin3' ,
    'shoulder_right_yin3' ,
    'shoulder_right_zin3' ,
    'elbow_left_xin3' ,
    'elbow_left_yin3' ,
    'elbow_left_zin3' ,
    'elbow_right_xin3' ,
    'elbow_right_yin3' ,
    'elbow_right_zin3'  ,
    'hand_left_xin3' ,
    'hand_left_yin3' ,
    'hand_left_zin3' ,
    'hand_right_xin3' ,
    'hand_right_yin3' ,
    'hand_right_zin3' ,
    'spine_xin3' ,
    'spine_yin3' ,
    'spine_zin3' ,
    'hip_center_xin3' ,
    'hip_center_yin3' ,
    'hip_center_zin3' ,
    'hip_left_xin3' ,
    'hip_left_yin3' ,
    'hip_left_zin3' ,
    'hip_right_xin3' ,
    'hip_right_yin3' ,
    'hip_right_zin3' ,
    'class'
    };


V.class_remap = struct();

sit_classes = {'sitS',
    'sitSBHP',
    'sitSLHP',
    'sitSRHP',
    'sitLf',
    'sitLfBHP',
    'sitLfLHP',
    'sitLfRHP',
    'sitLb',
    'sitLbBHP',
    'sitLbLHP',
    'sitLbRHP'};

stand_classes = {'stand',
    'standBHP',
    'standLHP',
    'standRHP',
    'standleanforward'};

for i = 1:length(sit_classes)
    V.class_remap.(sit_classes{i}) = 'sit';
end
for i = 1:length(stand_classes)
   V.class_remap.(stand_classes{i}) = 'stand';
end


clear 'stand_classes' 'sit_classes'
