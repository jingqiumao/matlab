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
for i=1:length(doy_DEC)
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

figure
scatter(data.PM25__g_m3_,HCHO_pptv_1hr./1000, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('PM2.5 vs. HCHO');ylabel('HCHO (ppbv)');xlabel('PM2.5 (ug/m3)'); ylim([0 18]);
title(hcb,'Temperature (C)');

figure
scatter(data.CO_ppm_,HCHO_pptv_1hr./1000, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('CO vs. HCHO');ylabel('HCHO (ppbv)');xlabel('CO (ppmv)');ylim([0 18]);
title(hcb,'Temperature (C)');

figure
scatter(data.SO2_ppb_,HCHO_pptv_1hr./1000, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('SO2 vs. HCHO');ylabel('HCHO (ppbv)');xlabel('SO2 (ppbv)');ylim([0 18]);
title(hcb,'Temperature (C)');

figure
scatter(data.O3_ppb_,HCHO_pptv_1hr./1000, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('O3 vs. HCHO');ylabel('HCHO (ppbv)');xlabel('O3 (ppbv)');ylim([0 18]);
title(hcb,'Temperature (C)');

figure
scatter(data.PM25__g_m3_,data.CO_ppm_, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('PM2.5 vs. CO');ylabel('CO (ppmv)');xlabel('PM2.5 (ug/m3)');
title(hcb,'Temperature (C)');

figure
scatter(data.Temp_C_, HCHO_pptv_1hr./1000, 30, data.CO_ppm_,'filled'); grid;hcb=colorbar;title('Temp vs. HCHO');ylabel('HCHO (ppbv)');xlabel('Temp (C)'); ylim([0 18]);
title(hcb,'CO (ppm)');

figure
scatter(data.PM25__g_m3_,data.SO2_ppb_, 30,data.Temp_C_,'filled'); grid;hcb=colorbar;title('PM2.5 vs. SO2');ylabel('SO2 (ppbv)');xlabel('PM2.5 (ug/m3)');
title(hcb,'Temperature (C)');