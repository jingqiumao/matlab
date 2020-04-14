set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/COFFEE/DEC_2020/';
filename='Dec_Jan1_Feb24.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
data=readtable(strcat(tempdir,filename),opts);
for i=1:length(data.DATE)
    DEC_time=data.DATE(i);
    doy_DEC(i)=datenum(DEC_time)-datenum(2020,1,1)+1;
end
doy_DEC=doy_DEC';

load mergeHCHO_1min.mat
delta_a = 1/24;
doy_mrg_1min=T1min;
for i=1:length(doy_DEC)
%     DEC may have a weird timestamp, from
%       k=find((doy_mrg_1min<=doy_DEC(i)+delta_a/2) & (doy_mrg_1min>=doy_DEC(i)-delta_a/2));
       k=find((doy_mrg_1min<=doy_DEC(i)+delta_a) & (doy_mrg_1min>=doy_DEC(i)));
      if ~isempty(k)
            kk=find(~(isnan(HCHO_pptv_1min(k))));
            if isempty(kk)
               HCHO_pptv_1hr(i)=NaN;
            else
               HCHO_pptv_1hr(i)=mean(HCHO_pptv_1min(k(kk)));
            end
        else
            HCHO_pptv_1hr(i)=NaN;
      end
end

plot (doy_DEC, HCHO_pptv_1hr./1000,'r.-')
hold on;
plot(doy_DEC,data.CO_ppm_.*10,'b.-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and CO (ppm)');
legend('HCHO (ppb)','CO (ppm)*10');

figure
plot (doy_DEC, HCHO_pptv_1hr./1000,'r.-')
hold on
plot(doy_DEC,data.SO2_ppb_,'g.-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and SO2 (ppb)');
legend('HCHO (ppb)','SO2 (ppb)');

figure
plot (doy_DEC, HCHO_pptv_1hr./1000,'r.-')
hold on
plot(doy_DEC,data.PM25__g_m3_./10,'k.-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and PM2.5 (ug/m3)');
legend('HCHO (ppb)','PM2.5 (ug/m3)/10');

figure
plot (doy_DEC, HCHO_pptv_1hr./1000,'r.-')
hold on
plot(doy_DEC,data.Temp_C_+40,'y.-');
xlabel('Day of Year')
ylabel('HCHO (ppb) and Temperature (C)');
legend('HCHO (ppb)','T+40C');

figure
plot (doy_DEC, HCHO_pptv_1hr./1000,'r.-')
hold on
plot(doy_DEC,data.O3_ppb_,'m.-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and O3 (ppb)');
legend('HCHO (ppb)','O3 (ppb)');

figure