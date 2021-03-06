%July 02
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July2_18/7-2 Sample/';
inputdate='20180702';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 03
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July3_18/7-3 Sample/';
inputdate='20180703';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 04
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July4_18/7-4 Sample/';
inputdate='20180704';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 05
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July5_18/7-5 Sample/';
inputdate='20180705';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 09
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July09_18/7-9 Sample/';
inputdate='20180709';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

% file_b=[tempdir 'Background.txt'];
file_b='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July09_18/7-9 MQ/Background.txt';
bg=readtable(file_b);

% file_r=[tempdir 'Reference.txt'];
file_r='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July09_18/7-9 MQ/Reference.txt';
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 12
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July12_18/';
inputdate='20180712';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 13
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July13_18/';
inputdate='20180713';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 14
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July14_18/';
inputdate='20180714';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 16 no bg or ref, used July 14th
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July16_18/';
inputdate='20180716';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July14_18/Background.txt';
bg=readtable(file_b);

file_r= '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July14_18/Reference.txt';
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 17
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July17_18/';
inputdate='20180717';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 18
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July18_18/';
inputdate='20180718';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 19
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July19_18/';
inputdate='20180719';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

% %July 20-24
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July20to24_18/7-20 sample/';
% inputdate='20180720';
% filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));
% 
% file_b='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July20to24_18/7-20 back spec.txt';
% bg=readtable(file_b);
% 
% file_r='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July20to24_18/7-20 ref spec.txt';
% ref=readtable(file_r);
% for i=1:length(filelist)
%     filename = filelist(i).name;
%     hour(i)=str2num(filename(22:23));
%     minute(i)=str2num(filename(25:26));
%     second(i)=str2num(filename(28:29));
%     timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
%     
%     sample=readtable(strcat(tempdir,filename));
%     ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
%     absorbance = -log10 (ratio);
%     indx1=find(sample.Var1 > 360 & sample.Var1 <370);
%     ab365(i) = mean (absorbance(indx1));
%     indx2=find(sample.Var1 > 590 & sample.Var1 <610);
%     ab600(i) = mean (absorbance(indx2));
%     indx3=find(sample.Var1 > 690 & sample.Var1 <710);
%     ab700(i) = mean (absorbance(indx3));
% end
% datafile=[tempdir 'LWCC' inputdate '.mat'];
% doy=julian2(inputdate)+timeofday/24;
% save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
% clear doy timeofday ab365 ab600 ab700


%July 25
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July25_18/';
inputdate='20180725';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 26
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July26_18/';
inputdate='20180726';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 27
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July27_18/';
inputdate='20180727';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'Background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'Reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 28
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July28_18/';
inputdate='20180728';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 29
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July29_18/';
inputdate='20180729';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 30
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July30_18/';
inputdate='20180730';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

%July 31
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July31_18/';
inputdate='20180731';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b=[tempdir 'background.txt'];
bg=readtable(file_b);

file_r=[tempdir 'reference.txt'];
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/1440;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 > 360 & sample.Var1 <370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 > 590 & sample.Var1 <610);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 > 690 & sample.Var1 <710);
    ab700(i) = mean (absorbance(indx3));
end
datafile=[tempdir 'LWCC' inputdate '.mat'];
doy=julian2(inputdate)+timeofday/24;
save (datafile, 'doy', 'timeofday','ab365','ab600','ab700');
clear doy timeofday ab365 ab600 ab700

function julianday=julian2(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
                year=str2num(dateinput(1:4));
                month=str2num(dateinput(5:6));
                day=str2num(dateinput(7:8));
                switch month
                        case 1
                daynum = 0;
                        case 2
                            daynum = 31;
                        case 3
                            daynum = 59;
                        case 4
                            daynum = 90;
                        case 5
                            daynum = 120;
                        case 6
                            daynum = 151;
            case 7
                            daynum = 181;
                        case 8
                            daynum = 212;
                        case 9
                            daynum = 243;
                        case 10
                            daynum = 273;
                        case 11
                            daynum = 304;
                        case 12
                            daynum = 334;
                end
                if rem(year,4) == 0 && month > 2
                        daynum = daynum+1;
                end
                julianday = daynum+day;
end