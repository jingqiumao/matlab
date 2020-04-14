%load flight data file
filename='/Volumes/GoogleDrive/My Drive/ALPACA/COFFEE/ICARTT/HCHO_Alaska2020_20200304_RA.ict';

[UTC_seconds, HCHO_pptv]=textread(filename,'%f %f','delimiter', ',','headerlines',33);
plot(UTC_seconds./3600-9, HCHO_pptv)
day=str2num(filename(23:24));
doy=day+UTC_seconds./3600;
doy=doy-9/24;%correct for UTC
