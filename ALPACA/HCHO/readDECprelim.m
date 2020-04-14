tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/COFFEE/DEC_2020/';
filename='Dec_Jan1_Mar6.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
data=readtable(strcat(tempdir,filename),opts);
for i=1:length(data.DATE)
    DEC_time=data.DATE(i);
    doy_DEC(i)=datenum(DEC_time)-datenum(2020,1,1)+1;
end
doy_DEC=doy_DEC';
% 
% DEC_time=data(:,1);
% CO_ppm = data(:,2);
% O3_ppb = data(:,3);
% PM25_ugm3=data(:,5);
% SO2_ppb = data(:,6);
% Temp_C = data(:,7);
% doy_DEC=datenum(DEC_time)-datenum(2020,1,1)+1;