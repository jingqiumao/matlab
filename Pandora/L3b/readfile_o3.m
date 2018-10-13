
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
firstday = 80;
subplot(3,4,1)
indx= (doy>firstday & doy <firstday+1);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,2)
indx= (doy>firstday+1 & doy <firstday+2);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,3)
indx= (doy>firstday+2 & doy <firstday+3);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,4)
indx= (doy>firstday+3 & doy <firstday+4);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,5)
indx= (doy>firstday+4 & doy <firstday+5);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,6)
indx= (doy>firstday+5 & doy <firstday+6);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,7)
indx= (doy>firstday+6 & doy <firstday+7);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,8)
indx= (doy>firstday+7 & doy <firstday+8);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,9)
indx= (doy>firstday+8 & doy <firstday+9);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,10)
indx= (doy>firstday+9 & doy <firstday+10);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,11)
indx= (doy>firstday+10 & doy <firstday+11);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

subplot(3,4,12)
indx= (doy>firstday+11 & doy <firstday+12);
plot(timeofday(indx), VCD(indx),'.');
xlim([0 24]);
%ylim([0 0.5]);
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