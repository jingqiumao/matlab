% here I am counting the begining of Oct, day 243, all the way to next year
% which is Oct, Nov, Dec, Jan, Feb, Mar (365+21+28+31)
n=(455-243)*24;

for i=1:n
    %from Oct 1 of 2017 to Mar 31st of 2018
    T1hr(i)=273+(i-1)*1/24;
end

%for CO
for i=1:length(CO_time)
    temp=char(CO_time(i));
    CO_year(i)=str2num(temp(1:4));
    CO_month(i)=str2num(temp(5:6));
    CO_day(i)=str2num(temp(7:8));
    CO_hour(i)=str2num(temp(10:11));
    CO_minute(i)=str2num(temp(12:13));
    if CO_year(i)==2017 
    CO_doy(i) = julian(temp(5:8))+CO_minute(i)./1440+CO_hour(i)./24;
    else
    CO_doy(i) = 365 + julian(temp(5:8))+CO_minute(i)./1440+CO_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((CO_doy<=T1hr(i)+delta_a/2) & (CO_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(CO(k))));
            if isempty(kk)
               CO_new(i)=NaN;
            else
               CO_new(i)=mean(CO(k(kk)));
            end
        else
            CO_new(i)=NaN;
      end
end

%for NOx
for i=1:length(NOx_time)
    temp=char(NOx_time(i));
    NOx_year(i)=str2num(temp(1:4));
    NOx_month(i)=str2num(temp(5:6));
    NOx_day(i)=str2num(temp(7:8));
    NOx_hour(i)=str2num(temp(10:11));
    NOx_minute(i)=str2num(temp(12:13));
    if NOx_year(i)==2017 
    NOx_doy(i) = julian(temp(5:8))+NOx_minute(i)./1440+NOx_hour(i)./24;
    else
    NOx_doy(i) = 365 + julian(temp(5:8))+NOx_minute(i)./1440+NOx_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((NOx_doy<=T1hr(i)+delta_a/2) & (NOx_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOx(k))));
            if isempty(kk)
               NOx_new(i)=NaN;
            else
               NOx_new(i)=mean(NOx(k(kk)));
            end
        else
            NOx_new(i)=NaN;
      end
end

%for NOy
for i=1:length(NOy_time)
    temp=char(NOy_time(i));
    NOy_year(i)=str2num(temp(1:4));
    NOy_month(i)=str2num(temp(5:6));
    NOy_day(i)=str2num(temp(7:8));
    NOy_hour(i)=str2num(temp(10:11));
    NOy_minute(i)=str2num(temp(12:13));
    if NOy_year(i)==2017 
    NOy_doy(i) = julian(temp(5:8))+NOy_minute(i)./1440+NOy_hour(i)./24;
    else
    NOy_doy(i) = 365 + julian(temp(5:8))+NOy_minute(i)./1440+NOy_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((NOy_doy<=T1hr(i)+delta_a/2) & (NOy_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOy(k))));
            if isempty(kk)
               NOy_new(i)=NaN;
            else
               NOy_new(i)=mean(NOy(k(kk)));
            end
        else
            NOy_new(i)=NaN;
      end
end

%for NO
for i=1:length(NO_time)
    temp=char(NO_time(i));
    NO_year(i)=str2num(temp(1:4));
    NO_month(i)=str2num(temp(5:6));
    NO_day(i)=str2num(temp(7:8));
    NO_hour(i)=str2num(temp(10:11));
    NO_minute(i)=str2num(temp(12:13));
    if NO_year(i)==2017 
    NO_doy(i) = julian(temp(5:8))+NO_minute(i)./1440+NO_hour(i)./24;
    else
    NO_doy(i) = 365 + julian(temp(5:8))+NO_minute(i)./1440+NO_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((NO_doy<=T1hr(i)+delta_a/2) & (NO_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NO(k))));
            if isempty(kk)
               NO_new(i)=NaN;
            else
               NO_new(i)=mean(NO(k(kk)));
            end
        else
            NO_new(i)=NaN;
      end
end

%for NO2
for i=1:length(NO2_time)
    temp=char(NO2_time(i));
    NO2_year(i)=str2num(temp(1:4));
    NO2_month(i)=str2num(temp(5:6));
    NO2_day(i)=str2num(temp(7:8));
    NO2_hour(i)=str2num(temp(10:11));
    NO2_minute(i)=str2num(temp(12:13));
    if NO2_year(i)==2017 
    NO2_doy(i) = julian(temp(5:8))+NO2_minute(i)./1440+NO2_hour(i)./24;
    else
    NO2_doy(i) = 365 + julian(temp(5:8))+NO2_minute(i)./1440+NO2_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((NO2_doy<=T1hr(i)+delta_a/2) & (NO2_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NO2(k))));
            if isempty(kk)
               NO2_new(i)=NaN;
            else
               NO2_new(i)=mean(NO2(k(kk)));
            end
        else
            NO2_new(i)=NaN;
      end
end

%for PM25
for i=1:length(PM25_time)
    temp=char(PM25_time(i));
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

delta_a = 1/24;
for i=1:n
      k=find((PM25_doy<=T1hr(i)+delta_a/2) & (PM25_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(PM25(k))));
            if isempty(kk)
               PM25_new(i)=NaN;
            else
               PM25_new(i)=mean(PM25(k(kk)));
            end
        else
            PM25_new(i)=NaN;
      end
end

%for SO2
for i=1:length(SO2_time)
    temp=char(SO2_time(i));
    SO2_year(i)=str2num(temp(1:4));
    SO2_month(i)=str2num(temp(5:6));
    SO2_day(i)=str2num(temp(7:8));
    SO2_hour(i)=str2num(temp(10:11));
    SO2_minute(i)=str2num(temp(12:13));
    if SO2_year(i)==2017 
    SO2_doy(i) = julian(temp(5:8))+SO2_minute(i)./1440+SO2_hour(i)./24;
    else
    SO2_doy(i) = 365 + julian(temp(5:8))+SO2_minute(i)./1440+SO2_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((SO2_doy<=T1hr(i)+delta_a/2) & (SO2_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(SO2(k))));
            if isempty(kk)
               SO2_new(i)=NaN;
            else
               SO2_new(i)=mean(SO2(k(kk)));
            end
        else
            SO2_new(i)=NaN;
      end
end

%for O3
for i=1:length(O3_time)
    temp=char(O3_time(i));
    O3_year(i)=str2num(temp(1:4));
    O3_month(i)=str2num(temp(5:6));
    O3_day(i)=str2num(temp(7:8));
    O3_hour(i)=str2num(temp(10:11));
    O3_minute(i)=str2num(temp(12:13));
    if O3_year(i)==2017 
    O3_doy(i) = julian(temp(5:8))+O3_minute(i)./1440+O3_hour(i)./24;
    else
    O3_doy(i) = 365 + julian(temp(5:8))+O3_minute(i)./1440+O3_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((O3_doy<=T1hr(i)+delta_a/2) & (O3_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(O3(k))));
            if isempty(kk)
               O3_new(i)=NaN;
            else
               O3_new(i)=mean(O3(k(kk)));
            end
        else
            O3_new(i)=NaN;
      end
end

%for Temperature
for i=1:length(Temperature_time)
    temp=char(Temperature_time(i));
    Temperature_year(i)=str2num(temp(1:4));
    Temperature_month(i)=str2num(temp(5:6));
    Temperature_day(i)=str2num(temp(7:8));
    Temperature_hour(i)=str2num(temp(10:11));
    Temperature_minute(i)=str2num(temp(12:13));
    if Temperature_year(i)==2017 
    Temperature_doy(i) = julian(temp(5:8))+Temperature_minute(i)./1440+Temperature_hour(i)./24;
    else
    Temperature_doy(i) = 365 + julian(temp(5:8))+Temperature_minute(i)./1440+Temperature_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((Temperature_doy<=T1hr(i)+delta_a/2) & (Temperature_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(Temperature(k))));
            if isempty(kk)
               Temperature_new(i)=NaN;
            else
               Temperature_new(i)=mean(Temperature(k(kk)));
            end
        else
            Temperature_new(i)=NaN;
      end
end


%for windv
for i=1:length(windv_time)
    temp=char(windv_time(i));
    windv_year(i)=str2num(temp(1:4));
    windv_month(i)=str2num(temp(5:6));
    windv_day(i)=str2num(temp(7:8));
    windv_hour(i)=str2num(temp(10:11));
    windv_minute(i)=str2num(temp(12:13));
    if windv_year(i)==2017 
    windv_doy(i) = julian(temp(5:8))+windv_minute(i)./1440+windv_hour(i)./24;
    else
    windv_doy(i) = 365 + julian(temp(5:8))+windv_minute(i)./1440+windv_hour(i)./24;
    end
end

delta_a = 1/24;
for i=1:n
      k=find((windv_doy<=T1hr(i)+delta_a/2) & (windv_doy>=T1hr(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(windv(k))));
            if isempty(kk)
               windv_new(i)=NaN;
            else
               windv_new(i)=mean(windv(k(kk)));
            end
        else
            windv_new(i)=NaN;
      end
end

save mergedata.mat T1hr CO_new NOx_new NOy_new NO_new NO2_new PM25_new SO2_new O3_new Temperature_new windv_new

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