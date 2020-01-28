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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
doy=julian2(inputdate)+timeofday;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700');
clear timeofday ab365 ab600 absorbance ab700

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
