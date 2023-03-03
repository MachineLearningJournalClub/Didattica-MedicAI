%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Codice apertura dataset EEG adattato a:                   %              
%                    dataset 1 BCI competition IV                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Put this Matlab code in the folder containing the BCI dataset
% 'BCIcompIV_1'. Otherwise the directory has to be adjusted.
%

close all
clear all
clc

%Chose the subject and load the dataset
[file, path]=uigetfile(fullfile(pwd,'BCIcompIV_1','Calibration'));
load([path file]);
subject=file(end-4);

%Useful Parameter
fs = nfo.fs;        %Sampling frequency
label = mrk.y;      %Label vector
cue = mrk.pos;      %Vector containing the beginning of the cue in time points.