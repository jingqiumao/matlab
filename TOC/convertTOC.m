% here I am trying to find all files in this folder
clear all
tempdir = '/Volumes/GoogleDrive/Team Drives/Data/TOC/July Data/';
filelist = dir(fullfile(tempdir, '**', 'HistData_*.csv'));

% run through all files in the designated folder
for fileid = 1: length(filelist)
    % if this is a backup folder, skip.
    if ~isempty(strfind(filelist(fileid).folder,'Backup')) continue; end
    filename = [filelist(fileid).folder '/' filelist(fileid).name];
    % read all variables
    tmp1=readtable(filename, 'Headerlines',7, 'Encoding','UTF16LE');
    for i =1:length(tmp1.Var14)
        tmpstr=char(tmp1.Var7(i));
        hour(i)=str2num(tmpstr(1:2));
        minute(i)=str2num(tmpstr(4:5));
        second(i)=str2num(tmpstr(7:8));
        if char(tmp1.Var8(i)) == 'pm' hour(i) = hour(i) +12; end
        if char(tmp1.Var8(i))== 'am'& hour(i)==12 hour(i)=0;end
        if char(tmp1.Var8(i))== 'pm'& hour(i)==24 hour(i)=12;end
        timeofday(i) = hour(i)+minute(i)/60+second(i)/1440;
        if char(tmp1.Var5(i)) == 'Jun' month(i)=6; daynum = 151;end
        if char(tmp1.Var5(i)) == 'Jul' month(i)=7; daynum = 181;end
        if char(tmp1.Var5(i)) == 'Aug' month(i)=8; daynum = 212;end
        day(i)=tmp1.Var4(i);
        %doy is the day of the year.
        doy(i)=day(i)+daynum+timeofday(i)/24;
    end
    %to make date format as YYYYMMDD
    dateInput = 20180000+month(1)*100+day(1);
    datafile= [filelist(fileid).folder '/' num2str(dateInput) '.mat'];
    toc=tmp1.Var14;
    %to have the same dimension as toc.
    doy=transpose(doy);
    save (datafile, 'doy', 'toc');
    clear doy toc
end
