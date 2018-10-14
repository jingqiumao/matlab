clear;
load merge_meas_OHRcal_OHRmeas_10min_new_basedonModTime
dayTime=Time-floor(Time);
[medianTime,POH_HO2_NO_median]=a_median(dayTime,POH_HO2_NO,1/24);
[medianTime,POH_HONO_hv_median]=a_median(dayTime,POH_HONO_hv,1/24);
[medianTime,POH_H2O2_hv_median]=a_median(dayTime,POH_H2O2_hv,1/24);
[medianTime,POH_O1D_H2O_median]=a_median(dayTime,POH_O1D_H2O_alkene,1/24);
[medianTime,POH_O3_Alkenes_median]=a_median(dayTime,POH_O3_Alkenes,1/24);
% [medianTime,LOH_OVOC_median]=a_median(dayTime,LOH_OVOC,1/24);%LOH_other=NaN2Zero(LOH_Acetylene)+NaN2Zero(LOH_HCHO);
% [medianTime,LOH_unknown_median]=a_median(dayTime,LOH_unknown,1/24);
% [medianTime,LOH_meas_median]=a_median(dayTime,LOH_meas',1/24);
% [medianTime,LOH_total_median]=a_median(dayTime,LOH_total,1/24);
% LOH_unknown_median=LOH_meas_median-(LOH_CO_median+LOH_NOx_median+LOH_alkane_median+LOH_alkene_median+LOH_aromatics_median+LOH_OVOC_median);
% LOH_unknown_median(LOH_unknown_median<0)=0;
%I happen to find the LOH_total_median<the sum of each median;

[medianTime,LOH_inorganic_median]=a_median(dayTime,LOH_inorganic,1/24);
[medianTime,LOH_organic_median]=a_median(dayTime,LOH_organic,1/24);

test2=[POH_HO2_NO_median;POH_O1D_H2O_median;POH_HONO_hv_median;POH_H2O2_hv_median;POH_O3_Alkenes_median];
test2=test2';

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);
figure

bar(test2,'stack');
legend('HO2+NO','O1D+H2O','HONO+hv','H2O2+hv','O3+Alkenes');
% title('Contribution');
xlim([0.5 24.5])
 set(gca,'XTick',[0.5 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
ylabel('POH');
