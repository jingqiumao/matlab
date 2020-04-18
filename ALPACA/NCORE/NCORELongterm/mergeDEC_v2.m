[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2013.csv');
time_local1=time_local;
PM251=PM25; 
sulfate1=sulfate; 
nitrate1=nitrate;
cholride1=cholride;
ammonium1=ammonium;
keep time_local1 PM251 sulfate1 nitrate1 cholride1 ammonium1;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2014.csv');
time_local_merge=[time_local1; time_local];
PM25_merge=[PM251; PM25]; 
sulfate_merge=[sulfate1; sulfate]; 
nitrate_merge=[nitrate1; nitrate];
cholride_merge=[cholride1; cholride];
ammonium_merge=[ammonium1; ammonium];
keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2015.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge; cholride];
ammonium_merge=[ammonium_merge; ammonium];

keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2016.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge; cholride];
ammonium_merge=[ammonium_merge; ammonium];

keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2017.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge; cholride];
ammonium_merge=[ammonium_merge; ammonium];

keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2018.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge; cholride];
ammonium_merge=[ammonium_merge; ammonium];

keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

[time_local,PM25, sulfate, nitrate,cholride,ammonium]=readDEC('Inorganic2019.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge; cholride];
ammonium_merge=[ammonium_merge; ammonium];

keep time_local_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge;

function [time_local,PM25_FRM, sulfate, nitrate,chloride,ammonium]=readDEC(filename)
[state_code,county_code,site_number,parameter_code,poc,latitude,longitude,datum,parameter,date_local,time_local,date_gmt,time_gmt,sample_measurement,units_of_measure,sample_duration,sample_frequency,detection_limit,uncertainty,qualifier,method_type,method_code,method,state,county,date_of_last_change,cbsa_code]=readvars(filename);

[year,month,day]=ymd(date_local);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88403 & (month==11|month==12|month==1|month==2));
sulfate_time=date_local(indx);
sulfate=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88306 & (month==11|month==12|month==1|month==2));
nitrate_time=date_local(indx);
nitrate=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88203 & (month==11|month==12|month==1|month==2));
chloride_time=date_local(indx);
chloride=sample_measurement(indx);
if isempty(chloride)
    chloride=NaN(length(sulfate),1);
end

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88301 & (month==11|month==12|month==1|month==2));
ammonium_time=date_local(indx);
ammonium=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88101 & sample_frequency=="EVERY DAY" & (month==11|month==12|month==1|month==2));
PM25_time_a=date_local(indx);
PM25_FRM_a=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88101 & sample_frequency=="EVERY 3RD DAY" & (month==11|month==12|month==1|month==2));
PM25_time_b=date_local(indx);
PM25_FRM_b=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88101 & sample_frequency=="EVERY 6TH DAY" & (month==11|month==12|month==1|month==2));
PM25_time_c=date_local(indx);
PM25_FRM_c=sample_measurement(indx);

PM25_FRM=NaN(length(sulfate),1);
time_local=sulfate_time;

for i=1:length(sulfate_time)
    indx = find (PM25_time_a == sulfate_time(i));
    indx2 = find (PM25_time_b == sulfate_time(i));
    indx3 = find (PM25_time_c == sulfate_time(i));
    if ~isempty(indx)
    PM25_FRM (i) = PM25_FRM_a(indx);
    elseif ~isempty(indx2)
        PM25_FRM (i) = PM25_FRM_b(indx2);
    else
             if ~isempty(indx3)
                PM25_FRM (i) = PM25_FRM_c(indx3);
             else
                PM25_FRM (i) = NaN;
             end
    end
end

end