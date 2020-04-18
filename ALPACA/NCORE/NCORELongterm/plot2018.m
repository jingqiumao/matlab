[state_code,county_code,site_number,parameter_code,poc,latitude,longitude,datum,parameter,date_local,time_local,date_gmt,time_gmt,sample_measurement,units_of_measure,sample_duration,sample_frequency,...
    detection_limit,uncertainty,qualifier,method_type,method_code,method,state,county,date_of_last_change,cbsa_code]=readvars('Inorganic2018.csv');

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

for i=1:length(PM25_time_a)
    PM25_time_final(i)=PM25_time_a(i);
    PM25_FRM_final(i)=PM25_FRM_a(i);
    if isnan(PM25_FRM_a(i)) 
        indx=find(PM25_time_b==PM25_time_a(i))
        %use poc 2, every 3rd day
        if ~isnan(PM25_FRM_b(indx))
        PM25_FRM_final(i)=PM25_FRM_b(indx);
        else
            indx2=find(PM25_time_c==PM25_time_a(i));
             %use poc 2, every 3rd day
            if ~isnan(PM25_FRM_c(indx2))
            PM25_FRM_final(i)=PM25_FRM_c(indx2)
            end
        end
    end
end

for i=1:length(sulfate_time)
    indx = find (PM25_time_final == sulfate_time(i));
    if ~isempty(indx)
    PM25_FRM_merge (i) = PM25_FRM_final(indx);
    else
        PM25_FRM_merge (i) = NaN;
    end
end
%scatter(pm25_merge(doy_merge>410),nitrate_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('nitrate');xlabel('pm25');
scatter(PM25_FRM_merge, sulfate, 30); grid;colorbar;title('2018');ylabel('sulfate');xlabel('pm25');
figure
scatter(PM25_FRM_merge, nitrate, 30); grid;colorbar;title('2018');ylabel('nitrate');xlabel('pm25');
figure
scatter(PM25_FRM_merge, ammonium, 30); grid;colorbar;title('2018');ylabel('ammonium');xlabel('pm25');
figure
scatter(PM25_FRM_merge, chloride, 30); grid;colorbar;title('2018');ylabel('chloride');xlabel('pm25');