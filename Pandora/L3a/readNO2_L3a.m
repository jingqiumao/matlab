file = '../L3a/Pandora29_Fairbanks_20180520_lev3.txt';
[mode,time, routine, repet, duration, sza, azimuth, lza, lazimuth, pointz, zmode, pointa,amode,...
    fitwindx,w_start, w_end, v17, v18, v19, v20, v21,v22, v23, v24, v25, v26, SCD_O3, SCD_O3_u, AMF_O3,...
    SCD_NO2, SCD_NO2_u, AMF_NO2, SCD_SO2, SCD_SO2_u, AMF_SO2, SCD_HCHO, SCD_HCHO_u, AMF_HCHO,...
    v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62]...
    =textread(file, '%s %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f', 'headerlines',67 );
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
indx= (doy>firstday & doy <firstday+1 & mode == "SO");
plot(timeofday(indx), SCD_NO2(indx),'.-');
xlim([0 24]);
ylim([0 1]);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);

figure;
plot(timeofday(indx), SCD_NO2(indx)./AMF_NO2(indx),'.-');
xlim([0 24]);
ylim([0 1]);
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