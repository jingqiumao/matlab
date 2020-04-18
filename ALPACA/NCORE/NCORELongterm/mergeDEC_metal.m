[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2013.csv');
time_local1=time_local;
PM251=PM25; 
sulfate1=sulfate; 
nitrate1=nitrate;
cholride1=cholride;
ammonium1=ammonium;
ambT1=ambT;
Fe1=Fe;
Cu1=Cu;
Mn1=Mn;
Ba1=Ba;
Sr1=Sr;
Zn1=Zn;
Na_IC1=Na_IC;
Na1=Na;
K_IC1=K_IC;
K1=K;
Mg1=Mg;
Ca1=Ca;
S_XRF1=S_XRF;
Cl_XRF1=Cl_XRF;
keep time_local1 PM251 ambT1 sulfate1 nitrate1 cholride1 ammonium1 ...
    Fe1 Cu1 Mn1 Ba1 Sr1 Zn1 Na_IC1 Na1 K_IC1 K1 Mg1 Ca1 S_XRF1 Cl_XRF1;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2014.csv');
time_local_merge=[time_local1; time_local];
PM25_merge=[PM251; PM25]; 
sulfate_merge=[sulfate1; sulfate]; 
nitrate_merge=[nitrate1; nitrate];
cholride_merge=[cholride1 cholride];
ammonium_merge=[ammonium1; ammonium];
ambT_merge=[ambT1;ambT];
Fe_merge=[Fe1;Fe];
Cu_merge=[Cu1;Cu];
Mn_merge=[Mn1;Mn];
Ba_merge=[Ba1;Ba];
Sr_merge=[Sr1;Sr];
Zn_merge=[Zn1;Zn];
Na_IC_merge=[Na_IC1;Na_IC];
Na_merge=[Na1;Na];
K_IC_merge=[K_IC1;K_IC];
K_merge=[K1;K];
Mg_merge=[Mg1;Mg];
Ca_merge=[Ca1 Ca];
S_XRF_merge=[S_XRF1;S_XRF];
Cl_XRF_merge=[Cl_XRF1;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2015.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge cholride];
ammonium_merge=[ammonium_merge; ammonium];
ambT_merge=[ambT_merge; ambT];
Fe_merge=[Fe_merge;Fe];
Cu_merge=[Cu_merge;Cu];
Mn_merge=[Mn_merge;Mn];
Ba_merge=[Ba_merge;Ba];
Sr_merge=[Sr_merge;Sr];
Zn_merge=[Zn_merge;Zn];
Na_IC_merge=[Na_IC_merge;Na_IC];
Na_merge=[Na_merge;Na];
K_IC_merge=[K_IC_merge;K_IC];
K_merge=[K_merge;K];
Mg_merge=[Mg_merge;Mg];
Ca_merge=[Ca_merge Ca];
S_XRF_merge=[S_XRF_merge;S_XRF];
Cl_XRF_merge=[Cl_XRF_merge;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2016.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge cholride];
ammonium_merge=[ammonium_merge; ammonium];
ambT_merge=[ambT_merge; ambT];
Fe_merge=[Fe_merge;Fe];
Cu_merge=[Cu_merge;Cu];
Mn_merge=[Mn_merge;Mn];
Ba_merge=[Ba_merge;Ba];
Sr_merge=[Sr_merge;Sr];
Zn_merge=[Zn_merge;Zn];
Na_IC_merge=[Na_IC_merge;Na_IC];
Na_merge=[Na_merge;Na];
K_IC_merge=[K_IC_merge;K_IC];
K_merge=[K_merge;K];
Mg_merge=[Mg_merge;Mg];
Ca_merge=[Ca_merge Ca];
S_XRF_merge=[S_XRF_merge;S_XRF];
Cl_XRF_merge=[Cl_XRF_merge;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2017.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge cholride];
ammonium_merge=[ammonium_merge; ammonium];
ambT_merge=[ambT_merge; ambT];
Fe_merge=[Fe_merge;Fe];
Cu_merge=[Cu_merge;Cu];
Mn_merge=[Mn_merge;Mn];
Ba_merge=[Ba_merge;Ba];
Sr_merge=[Sr_merge;Sr];
Zn_merge=[Zn_merge;Zn];
Na_IC_merge=[Na_IC_merge;Na_IC];
Na_merge=[Na_merge;Na];
K_IC_merge=[K_IC_merge;K_IC];
K_merge=[K_merge;K];
Mg_merge=[Mg_merge;Mg];
Ca_merge=[Ca_merge Ca];
S_XRF_merge=[S_XRF_merge;S_XRF];
Cl_XRF_merge=[Cl_XRF_merge;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2018.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge cholride'];
ammonium_merge=[ammonium_merge; ammonium];
ambT_merge=[ambT_merge; ambT];
Fe_merge=[Fe_merge;Fe];
Cu_merge=[Cu_merge;Cu];
Mn_merge=[Mn_merge;Mn];
Ba_merge=[Ba_merge;Ba];
Sr_merge=[Sr_merge;Sr];
Zn_merge=[Zn_merge;Zn];
Na_IC_merge=[Na_IC_merge;Na_IC];
Na_merge=[Na_merge;Na];
K_IC_merge=[K_IC_merge;K_IC];
K_merge=[K_merge;K];
Mg_merge=[Mg_merge;Mg];
Ca_merge=[Ca_merge Ca];
S_XRF_merge=[S_XRF_merge;S_XRF];
Cl_XRF_merge=[Cl_XRF_merge;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

[time_local,ambT, PM25, sulfate, nitrate,cholride,ammonium,Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC('Metals_2019.csv');
time_local_merge=[time_local_merge; time_local];
PM25_merge=[PM25_merge; PM25]; 
sulfate_merge=[sulfate_merge; sulfate]; 
nitrate_merge=[nitrate_merge; nitrate];
cholride_merge=[cholride_merge cholride'];
ammonium_merge=[ammonium_merge; ammonium];
ambT_merge=[ambT_merge; ambT];
Fe_merge=[Fe_merge;Fe];
Cu_merge=[Cu_merge;Cu];
Mn_merge=[Mn_merge;Mn];
Ba_merge=[Ba_merge;Ba];
Sr_merge=[Sr_merge;Sr];
Zn_merge=[Zn_merge;Zn];
Na_IC_merge=[Na_IC_merge;Na_IC];
Na_merge=[Na_merge;Na];
K_IC_merge=[K_IC_merge;K_IC];
K_merge=[K_merge;K];
Mg_merge=[Mg_merge;Mg];
Ca_merge=[Ca_merge Ca];
S_XRF_merge=[S_XRF_merge;S_XRF];
Cl_XRF_merge=[Cl_XRF_merge;Cl_XRF];
keep time_local_merge ambT_merge PM25_merge sulfate_merge nitrate_merge cholride_merge ammonium_merge...
    Fe_merge Cu_merge Mn_merge Ba_merge Sr_merge Zn_merge Na_IC_merge Na_merge K_IC_merge K_merge Mg_merge Ca_merge S_XRF_merge Cl_XRF_merge;

function [time_local,ambientT, PM25_FRM, sulfate, nitrate,chloride,ammonium, Fe, Cu, Mn,Ba,Sr,Zn,Na_IC,Na,K_IC,K,Mg,Ca,S_XRF,Cl_XRF]=readDEC(filename)
[state_code,county_code,site_number,parameter_code,poc,latitude,longitude,datum,parameter,date_local,time_local,date_gmt,time_gmt,sample_measurement,units_of_measure,sample_duration,sample_frequency,detection_limit,uncertainty,qualifier,method_type,method_code,method,state,county,date_of_last_change,cbsa_code]=readvars(filename);

[year,month,day]=ymd(date_local);


indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88403 & (month==11|month==12|month==1|month==2));
sulfate_time=date_local(indx);
sulfate=sample_measurement(indx);

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88306 & (month==11|month==12|month==1|month==2));
nitrate_time=date_local(indx);
nitrate=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(nitrate_time==sulfate_time(i));
        if ~isempty(k)
            nitrate1(i)=nitrate(k);
        end
    end
nitrate=nitrate1';   

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88203 & (month==11|month==12|month==1|month==2));
chloride_time=date_local(indx);
chloride=sample_measurement(indx);
if length(chloride)~=length(sulfate)    
    chloride1=NaN(length(sulfate),1);
    for i=1:length(sulfate)
        k=find(chloride_time==sulfate_time(i));
        if ~isempty(k)
            chloride1(i)=chloride(k);
        else 
            chloride1(i)=NaN;
        end
    end 
    chloride=chloride1';
end


indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88301 & (month==11|month==12|month==1|month==2));
ammonium_time=date_local(indx);
ammonium=sample_measurement(indx);

    for i=1:length(sulfate)
        k=find(ammonium_time==sulfate_time(i));
        if ~isempty(k)
            ammonium1(i)=ammonium(k);
        end
    end
ammonium=ammonium1';   
%metals
%Fe 88126, Cu 88114, Mn 88132, barium 88107,Strontium 88168, Zinc 88167
%Sodium_IC 88302, Sodium 88184, Mg 88140, Calcium 88111, K_IC 88303, K 88180
%Sulfur_XRF 88169, Chlorine_XRF 88115
indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88126 & (month==11|month==12|month==1|month==2));
Fe_time=date_local(indx);
Fe=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Fe_time==sulfate_time(i));
        if ~isempty(k)
            Fe1(i)=Fe(k);
        end
    end
Fe=Fe1';   


indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88114 & (month==11|month==12|month==1|month==2));
Cu_time=date_local(indx);
Cu=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Cu_time==sulfate_time(i));
        if ~isempty(k)
            Cu1(i)=Cu(k);
        end
    end
Cu=Cu1';   

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88132 & (month==11|month==12|month==1|month==2));
Mn_time=date_local(indx);
Mn=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Mn_time==sulfate_time(i));
        if ~isempty(k)
            Mn1(i)=Mn(k);
        end
    end
Mn=Mn1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88107 & (month==11|month==12|month==1|month==2));
Ba_time=date_local(indx);
Ba=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Ba_time==sulfate_time(i));
        if ~isempty(k)
            Ba1(i)=Ba(k);
        end
    end
Ba=Ba1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88168 & (month==11|month==12|month==1|month==2));
Sr_time=date_local(indx);
Sr=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Sr_time==sulfate_time(i));
        if ~isempty(k)
            Sr1(i)=Sr(k);
        end
    end
Sr=Sr1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88167 & (month==11|month==12|month==1|month==2));
Zn_time=date_local(indx);
Zn=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Zn_time==sulfate_time(i));
        if ~isempty(k)
            Zn1(i)=Zn(k);
        end
    end
Zn=Zn1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88302 & (month==11|month==12|month==1|month==2));
Na_IC_time=date_local(indx);
Na_IC=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Na_IC_time==sulfate_time(i));
        if ~isempty(k)
            Na_IC1(i)=Na_IC(k);
        end
    end
Na_IC=Na_IC1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88184 & (month==11|month==12|month==1|month==2));
Na_time=date_local(indx);
Na=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Na_time==sulfate_time(i));
        if ~isempty(k)
            Na1(i)=Na(k);
        end
    end
Na=Na1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88140 & (month==11|month==12|month==1|month==2));
Mg_time=date_local(indx);
Mg=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Mg_time==sulfate_time(i));
        if ~isempty(k)
            Mg1(i)=Mg(k);
        end
    end
Mg=Mg1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88140 & (month==11|month==12|month==1|month==2));
Ca_time=date_local(indx);
Ca=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Ca_time==sulfate_time(i));
        if ~isempty(k)
            Ca1(i)=Ca(k);
        end
    end
Ca=Ca1;

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88303 & (month==11|month==12|month==1|month==2));
K_IC_time=date_local(indx);
K_IC=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(K_IC_time==sulfate_time(i));
        if ~isempty(k)
            K_IC1(i)=K_IC(k);
        end
    end
K_IC=K_IC1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88180 & (month==11|month==12|month==1|month==2));
K_time=date_local(indx);
K=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(K_time==sulfate_time(i));
        if ~isempty(k)
            K1(i)=K(k);
        end
    end
K=K1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88169 & (month==11|month==12|month==1|month==2));
S_XRF_time=date_local(indx);
S_XRF=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(S_XRF_time==sulfate_time(i));
        if ~isempty(k)
            S_XRF1(i)=S_XRF(k);
        end
    end
S_XRF=S_XRF1';

indx=find(state_code==02 & county_code ==90 & site_number ==034 & parameter_code==88115 & (month==11|month==12|month==1|month==2));
Cl_XRF_time=date_local(indx);
Cl_XRF=sample_measurement(indx);
    for i=1:length(sulfate)
        k=find(Cl_XRF_time==sulfate_time(i));
        if ~isempty(k)
            Cl_XRF1(i)=Cl_XRF(k);
        end
    end
Cl_XRF=Cl_XRF1';

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

end