tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July25_18/'
filelist = dir(fullfile(tempdir, 'Intensity_FLMT021921_*.txt'));

file_b='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July25_18/Background.txt';
bg=readtable(file_b);

file_r='/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July25_18/Reference.txt';
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
plot(timeofday, ab365, 'b.-', timeofday, ab600,'k.-');
ylabel('Absorbance')
xlabel('Time of day')
legend('365nm','600nm')