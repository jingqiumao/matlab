[StateCode,CountyCode, SiteID, Parameter, POC, latitude, longitude,	datum, parameter, date_local, time_local, date_gmt, time_gmt, SampleValue, units_of_measure, sample_duration, sample_frequency, detection_limit, uncertainty,...
    qualifier, method_type,	method_code, method, state,	county,	date_of_last_change,	cbsa_code]=...
    readvars('/Volumes/GoogleDrive/My Drive/group_member/current/Ragen/2019data/DEC_data/hourlydata_2013_2019/NCOREhourly_2016.csv');
indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42401& POC==1);
SO2_unsort=SampleValue(indx);
SO2_time_unsort=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));
%try to sort the arry
[SO2,sort_indx]=sort(SO2_time_unsort);
SO2=SO2_unsort(sort_indx);

indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42101);
CO=SampleValue(indx);
CO_time=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));

indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42600);
NOy=SampleValue(indx);
NOy_time=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42601 & POC==1);
% NOa=SampleValue(indx);
% NOa_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42601 & POC==2);
% NOb=SampleValue(indx);
% NOb_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42602);
% NO2=SampleValue(indx);
% NO2_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42603);
% NOx=SampleValue(indx);
% NOx_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==42612);
% NOz=SampleValue(indx);
% NOz_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));

indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==44201);
O3=SampleValue(indx);
O3_time=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==61101 & POC==1);
% wind10m_spd=SampleValue(indx);
% wind10m_spd_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==61101 & POC==2);
% wind3m_spd=SampleValue(indx);
% wind3m_spd_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==61102 & POC==1);
% wind10m_dir=SampleValue(indx);
% wind10m_dir_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==61102 & POC==2);
% wind3m_dir=SampleValue(indx);
% wind3m_dir_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));
% 
% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==62101 & POC==1);
% t10m=SampleValue(indx);
% t10m_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));

indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==62101 & POC==2);
t3m=SampleValue(indx);
t3m_time=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));

% indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==62201);
% rh=SampleValue(indx);
% rh_time=convertDOY(strcat(num2str(Date(indx)),char(StartTime(indx))));

indx=find(StateCode==02 & CountyCode ==90 & SiteID ==034 & Parameter==88501);
pm25=SampleValue(indx);
pm25_time=convertDOY(strcat(datestr(date_local(indx),'yyyymmdd'),char(time_local(indx))));

save NCOREdata2016.mat CO CO_time SO2 SO2_time NOy NOy_time O3 O3_time ...
    t3m t3m_time pm25 pm25_time

function doy=convertDOY (inputtime)
for i=1:length(inputtime)
    temp=inputtime(i,:);
    year(i)=str2num(temp(1:4));
    month(i)=str2num(temp(5:6));
    day(i)=str2num(temp(7:8));
    hour(i)=str2num(temp(9:10));
    minute(i)=str2num(temp(12:13));
%     if year(i)==2018
    doy(i) = julian(temp(5:8))+minute(i)./1440+hour(i)./24;
%     else
%     doy(i) = 365+julian(temp(5:8))+minute(i)./1440+hour(i)./24;
%     end
end
end

function julianday=julian(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
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
%                 if rem(year,4) == 0 && month > 2
%                         daynum = daynum+1;
%                 end
                julianday = daynum+day;
end
