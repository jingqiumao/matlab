% a faster way to do this is textscan
% fid = fopen('Pandora29_Fairbanks_O3_FW5.txt','rt');
% C = textscan(fid,'%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines',23);
% fclose(fid);
file = 'Pandora29_Fairbanks_O3_FW5.txt';
[time,duration,sza, azimuth, rms, rms_resid,VCD, VCD_u, AMF, sum, eff_temp, stray, w_shift, wheel, fitting, O3_temp, O3_temp_u]...
    =textread(file, '%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f', 'headerlines',23 );
time=char(time);
year=sza;
month=sza;
day=sza;
hour=sza;
minute=sza;
doy=sza;
for i=1:length(time)
    temp=time(i,:);
    year(i)=str2num(temp(1:4));
    month(i)=str2num(temp(5:6));
    day(i)=str2num(temp(7:8));
    hour(i)=str2num(temp(10:11));
    minute(i)=str2num(temp(12:13));
    doy(i) = julian(temp(5:8))+minute(i)./1440+hour(i)./24;
end

doy = doy-8/24; %to corrected for UTC
timeofday = (doy - floor(doy))*24;
firstday = 140;
indx= (doy>firstday & doy <firstday+1);
plot(timeofday(indx), VCD(indx),'.-');
xlim([0 24]);
ylim([0 1200]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

figure;
plot(timeofday(indx), VCD(indx).*AMF(indx),'.-');
xlim([0 24]);
ylim([0 1200]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

function julianday=julian(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
        year = 2018;
		month=str2num(dateinput(1:2));
		day=str2num(dateinput(3:4));
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