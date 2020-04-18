tmp=readtable('DataMart_hourly_fromAlex.xlsx');

vname=char(tmp.Parameter);
  j_co=1;
  j_nox=1;
  j_no=1;
  j_no2=1;
  j_noy=1;
  j_pm25=1;
  j_so2=1;
  j_o3=1;
  j_windv =1;
  j_temperature = 1;
for i=1:length(tmp.Parameter)
  
    if length(strtrim(vname(i,:)))==length('Carbon monoxide')
    if strtrim(vname(i,:))=='Carbon monoxide'
        CO_time(j_co)=tmp.datetime(i);
        CO(j_co)=tmp.value(i);
        j_co=j_co+1;
    end
    end
    

    if length(strtrim(vname(i,:)))==length('Oxides of nitrogen (NOx)')
    if strtrim(vname(i,:))=='Oxides of nitrogen (NOx)'
        NOx_time(j_nox)=tmp.datetime(i);
        NOx(j_nox)=tmp.value(i);
        j_nox=j_nox+1;
    end
    end

    if length(strtrim(vname(i,:)))==length('Reactive oxides of nitrogen (NOy)')
    if strtrim(vname(i,:))=='Reactive oxides of nitrogen (NOy)'
        NOy_time(j_noy)=tmp.datetime(i);
        NOy(j_noy)=tmp.value(i);
        j_noy=j_noy+1;
    end
    end

    if length(strtrim(vname(i,:)))==length('Nitric oxide (NO)')
    if strtrim(vname(i,:))=='Nitric oxide (NO)'
        NO_time(j_no)=tmp.datetime(i);
        NO(j_no)=tmp.value(i);
        j_no=j_no+1;
    end
    end
    

    if length(strtrim(vname(i,:)))==length('Nitrogen dioxide (NO2)')
    if strtrim(vname(i,:))=='Nitrogen dioxide (NO2)'
        NO2_time(j_no2)=tmp.datetime(i);
        NO2(j_no2)=tmp.value(i);
        j_no2=j_no2+1;
    end
    end


    if length(strtrim(vname(i,:)))==length('PM2.5 Raw Data')
    if strtrim(vname(i,:))=='PM2.5 Raw Data'
        PM25_time(j_pm25)=tmp.datetime(i);
        PM25(j_pm25)=tmp.value(i);
        j_pm25=j_pm25+1;
    end
    end
 

    if length(strtrim(vname(i,:)))==length('Sulfur dioxide')
    if strtrim(vname(i,:))=='Sulfur dioxide'
        SO2_time(j_so2)=tmp.datetime(i);
        SO2(j_so2)=tmp.value(i);
        j_so2=j_so2+1;
    end
    end
 

    if length(strtrim(vname(i,:)))==length('Ozone')
    if strtrim(vname(i,:))=='Ozone'
        O3_time(j_o3)=tmp.datetime(i);
        O3(j_o3)=tmp.value(i);
        j_o3=j_o3+1;
    end
    end
    
    if length(strtrim(vname(i,:)))==length('Outdoor Temperature')
    if strtrim(vname(i,:))=='Outdoor Temperature'
        Temperature_time(j_temperature)=tmp.datetime(i);
        Temperature(j_temperature)=tmp.value(i);
        j_temperature=j_temperature+1;
    end
    end
    
    if length(strtrim(vname(i,:)))==length('Wind Speed - Resultant')
    if strtrim(vname(i,:))=='Wind Speed - Resultant'
        windv_time(j_windv)=tmp.datetime(i);
        windv(j_windv)=tmp.value(i);
        j_windv=j_windv+1;
    end
    end
end
