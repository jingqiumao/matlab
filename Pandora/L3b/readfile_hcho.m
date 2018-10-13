
file = 'Pandora29s1_Fairbanks_L2Tot_rfus0p1-4.txt';
[time,v1,v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17,v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33]...
    =textread(file, '%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f', 'headerlines',55 );
time=char(time);
year=v4;
month=v4;
day=v4;
hour=v4;
minute=v4;
doy=v4;
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

vcd_HCHO = v7;
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