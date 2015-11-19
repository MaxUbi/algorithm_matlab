clc;
clear;

disp('=Algorithm================================')
%%% set variables
disp('Configuring Variables')
Configure;
disp('Configured')
disp('--------------------')

%%% load Data
disp('Loading Data into the program')
LoadData;
disp('Loaded')
disp('--------------------')

%%% Train the SVM Model
disp('Training the SVM Model')
Train
disp('Trained')
disp('--------------------')

%%% Test the SVM Model
disp('Testing the SVM Model')
Test
disp('Tested')
disp('=Finished================================')