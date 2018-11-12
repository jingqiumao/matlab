% filename='/Volumes/GoogleDrive/My Drive/group_data/NCore Data/PM25_2015summer.txt';
% [site,data_status,action_code,datetime,parameter,duration,frequency,value,unit,qc,poc,lat,lon,GISDatum,elev,method_code,mpc,mpc_value,uncertainty,qualifiers]...
%      =textread(filename,'%f %f %f %s %f %f %s %f %f %f %f %f %f %f %s %f %f %f %f %f','headerlines',1 );
 
% textscan is faster than textread!!!!
filename='/Volumes/GoogleDrive/My Drive/group_data/NCore Data/PM25_2015summer.txt';
fid = fopen(filename);
% textscan is cool with ignoring the rest of the line.
C =textscan(fid,'%f %f %f %s %f %f %s %f %u %u %u %f %f %*[^\n]','Delimiter',',','HeaderLines',1);
fclose(fid);
[site,data_status,action_code,datetime,parameter,duration,frequency,value] = C{:};

%88501 PM2.5 Raw Data
%88502 Acceptable PM2.5 AQI & Speciation Mass

indx=find(parameter == 88501);
time_PM25=datetime(indx);
value_PM25=value(indx);
[newtime, indx_time]=sort(time_PM25);
value_PM25_sorted=value_PM25(indx_time);

%for CO
for i=1:length(newtime)
    temp=char(newtime(i));
    PM25_year(i)=str2num(temp(1:4));
    PM25_month(i)=str2num(temp(5:6));
    PM25_day(i)=str2num(temp(7:8));
    PM25_hour(i)=str2num(temp(10:11));
    PM25_minute(i)=str2num(temp(12:13));
    if PM25_year(i)==2017 
    PM25_doy(i) = julian(temp(5:8))+PM25_minute(i)./1440+PM25_hour(i)./24;
    else
    PM25_doy(i) = 365 + julian(temp(5:8))+PM25_minute(i)./1440+PM25_hour(i)./24;
    end
end


indx1=find(parameter == 88502);
time_PM25_corr=datetime(indx1);
value_PM25_corr=value(indx1);
[newtime, indx_time1]=sort(time_PM25_corr);
value_PM25_corr_sorted=value_PM25_corr(indx_time1);

% plot(PM25_doy, value_PM25_sorted, PM25_doy, value_PM25_corr_sorted)


%read IDL data from GEOS-Chem
gc=restore_idl('formatlab.sav')

plot(PM25_doy-366, value_PM25_sorted, gc.TIME, gc.PM25)
legend ('Obs (10-day avg=47.8 ug/m^3)','GEOS-Chem (10-day avg=7.7 ug/m^3)', 'FontSize',14)
set(gca, 'YScale', 'log')
set(gca,'XTick',[181 183 185 187 189],'XTickLabel',[' July 1';' July 3';' July 5';' July 7';' July 9']);
set(gca,'YTick',[1 10 20 50 100 200 500],'YTickLabel',['  1';' 10';' 20';' 50';'100';'200';'500']);
title ('Observation and model results of PM2.5 at Fairbanks in July 2015', 'FontSize',14)
ylabel('Mass concentration (ug/m3)')
function julianday=julian(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
        year = 2017;
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