[state_code,county_code,site_number,parameter_code,poc,latitude,longitude,datum,parameter,date_local,time_local,...
    date_gmt,time_gmt,sample_measurement,units_of_measure,sample_duration,sample_frequency,detection_limit,...
    uncertainty,qualifier,method_type,method_code,method,state,county,date_of_last_change,cbsa_code]=readvars('Inorganic2013.csv');

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

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==68105 & sample_frequency=="EVERY DAY" & (month==11|month==12|month==1|month==2));
ambientT_time_a=date_local(indx);
ambientT_a=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==68105 & sample_frequency=="EVERY 3RD DAY" & (month==11|month==12|month==1|month==2));
ambientT_time_b=date_local(indx);
ambientT_b=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==68105 & sample_frequency=="EVERY 6TH DAY" & (month==11|month==12|month==1|month==2));
ambientT_time_c=date_local(indx);
ambientT_c=sample_measurement(indx);

PM25_FRM=NaN(length(sulfate),1);
ambientT=NaN(length(sulfate),1);
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

for i=1:length(sulfate_time)
    indx = find (ambientT_time_a == sulfate_time(i));
    indx2 = find (ambientT_time_b == sulfate_time(i));
    indx3 = find (ambientT_time_c == sulfate_time(i));
    if ~isempty(indx)
    ambientT (i) = ambientT_a(indx);
    elseif ~isempty(indx2)
        ambientT (i) = mean(ambientT_b(indx2));
    else
             if ~isempty(indx3)
                ambientT (i) = ambientT_c(indx3);
             else
                ambientT (i) = NaN;
             end
    end
end