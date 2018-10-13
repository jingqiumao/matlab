clear
load 20180323.mat
save mergeTemp.mat;clear;%for the first append, which needs existing file

tempdir = '/Volumes/GoogleDrive/My Drive/Pandora/data/L3a'
filelist = dir(fullfile(tempdir, '2018*.mat'));


for i=1:length(filelist)
    filename = filelist(i).name;
    eval(['load ',filename]);
    display(filename);

tempstr=who;

    for j=1:length(tempstr)
        if ~strcmp(tempstr(j),'i')==1 & ~strcmp(tempstr(j),'j')==1 & ~strcmp(tempstr(j),'tempstr')==1 & ~strcmp(tempstr(j),'tempdir')==1 & ~strcmp(tempstr(j),'filename')==1 & ~strcmp(tempstr(j),'filelist')==1& ~strcmp(tempstr(j),'str')==1
        eval([char(cellstr(tempstr(j))),'1 =', char(cellstr(tempstr(j))),';']);
        eval(['clear ', char(cellstr(tempstr(j)))]);
        end
    end;
    load mergeTemp.mat
    for j=1:length(tempstr)
        if ~strcmp(tempstr(j),'i')==1 & ~strcmp(tempstr(j),'j')==1 & ~strcmp(tempstr(j),'tempstr')==1 & ~strcmp(tempstr(j),'tempdir')==1 & ~strcmp(tempstr(j),'filename')==1 & ~strcmp(tempstr(j),'filelist')==1& ~strcmp(tempstr(j),'str')==1
            eval([char(cellstr(tempstr(j))),'=[', char(cellstr(tempstr(j))),'; ',char(cellstr(tempstr(j))),'1 ];']);
            eval(['clear ', char(cellstr(tempstr(j))),'1']);
        end
    end
%write at once to save time
%construct the clearing command string
str=sprintf('%s ',tempstr{:});% it is {, not (!!!!!!!!!!!!!!!!!!!
%save them
evalin('base',['save mergeTemp.mat ' str]);
     
end