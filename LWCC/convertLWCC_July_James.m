%July 25
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July25_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180725.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 26
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July26_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180726.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 2
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July2_18\7-2 Sample\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180702.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 03
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July3_18\7-3 Sample\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180703.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 04
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July4_18\7-4 Sample\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180704.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 05
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July5_18\7-5 Sample\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180705.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 09
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July09_18\7-9 Sample\';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b='G:\Team Drives\Data\LWCC\July Data\July09_18\7-9 MQ\Background.txt';
bg=readtable(file_b);

file_r='G:\Team Drives\Data\LWCC\July Data\July09_18\7-9 MQ\Reference.txt';
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180709.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 12
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July12_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180712.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 13
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July13_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180713.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 14
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July14_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180714.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 16 no bg or ref, used July 14th
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July16_18\';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b='G:\Team Drives\Data\LWCC\July Data\July14_18\Background';
bg=readtable(file_b);

file_r='G:\Team Drives\Data\LWCC\July Data\July14_18\Reference';
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180716.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 17
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July17_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180717.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 18
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July18_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180718.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 19
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July19_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180719.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 20-24, there were missing data in this folder
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July20to24_18\7-20 sample\';
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b='G:\Team Drives\Data\LWCC\July Data\July20to24_18\7-20 ref spec';
bg=readtable(file_b);

file_r='G:\Team Drives\Data\LWCC\July Data\July20to24_18\7-20 back spec';
ref=readtable(file_r);
for i=1:length(filelist)
    filename = filelist(i).name;
    hour(i)=str2num(filename(22:23));
    minute(i)=str2num(filename(25:26));
    second(i)=str2num(filename(28:29));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180720to24.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 27
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July27_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180727.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 28
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July28_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180728.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 29
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July29_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180729.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 30
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July30_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180730.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 25
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July25_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180725.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

%July 31
tempdir = 'G:\Team Drives\Data\LWCC\July Data\July31_18\';
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
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
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
datafile=[tempdir 'LWCC20180725.mat'];
save (datafile, 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

