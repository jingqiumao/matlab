set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',1);

load mergeHCHO.mat
HCHO_pptv_mrg(HCHO_pptv_mrg<-99) = NaN;
plot (doy_mrg, HCHO_pptv_mrg./1000)
hold on;
plot(doy_DEC,data.CO_ppm_.*10,'ro-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and CO (ppm)');
legend('HCHO (ppb)','CO (ppm)*10');

figure
plot (doy_mrg, HCHO_pptv_mrg./1000)
hold on
plot(doy_DEC,data.SO2_ppb_,'go-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and SO2 (ppb)');
legend('HCHO (ppb)','SO2 (ppb)');

figure
plot (doy_mrg, HCHO_pptv_mrg./1000)
hold on
plot(doy_DEC,data.PM25__g_m3_./10,'ko-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and PM2.5 (ug/m3)');
legend('HCHO (ppb)','PM2.5 (ug/m3)/10');

figure
plot (doy_mrg, HCHO_pptv_mrg./1000)
hold on
plot(doy_DEC,data.Temp_C_+40,'yo-');
xlabel('Day of Year')
ylabel('HCHO (ppb) and Temperature (C)');
legend('HCHO (ppb)','T+40C');

figure
plot (doy_mrg, HCHO_pptv_mrg./1000)
hold on
plot(doy_DEC,data.O3_ppb_,'mo-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and O3 (ppb)');
legend('HCHO (ppb)','O3 (ppb)');