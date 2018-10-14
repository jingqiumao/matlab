clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

% Calculated by Xinrong
% (1) TexAQS2000: doy=doy(CST)-0.3417/24;
% (2) NYC2001: doy=doy(EDT)-1.025/24; 
% (3) MCMA2003: doy=doy(CST)-0.6083/24;
% (4) TRAMP2006: doy=doy(CST)-0.3360/24;


load Houston2000_10min_20081020
Time=Time-0.3417/24;
dayTime=Time-floor(Time);
[time_texaqs_median,OH_texaqs_median]=a_median(dayTime,OHobs,1/24);
[time_texaqs_median,HO2_texaqs_median]=a_median(dayTime,HO2obs,1/24);
% load MCMA_05022005_with_model
% dayTime=Time-floor(Time);
% [time_mcma_median,OH_mcma_median]=a_median(dayTime,OH,1/24);
% [time_mcma_median,HO2_mcma_median]=a_median(dayTime,HO2,1/24);
load NYC2001_10min_20081020
Time=Time-1.025/24;
dayTime=Time-floor(Time);%I decide to use local time.
[time_NYC_median,OH_NYC_median]=a_median(dayTime,OHobs,1/24);
[time_NYC_median,HO2_NYC_median]=a_median(dayTime,HO2obs,1/24);
load MCMA_1min_20081020
Time=Time-0.6083/24;
dayTime=Time-floor(Time);
[time_mcma_median,OH_mcma_median]=a_median(dayTime,OHobs,1/24);
[time_mcma_median,HO2_mcma_median]=a_median(dayTime,HO2obs,1/24);
load merge_meas_OHRcal_OHRmeas_10min_new_basedonModTime
Time=Time-0.3360/24;
dayTime=Time-floor(Time);%I decide to use local time.
[time_tramp_median,OH_tramp_median]=a_median(dayTime,OH,1/24);
[time_tramp_median,HO2_tramp_median]=a_median(dayTime,HO2,1/24);

% [a,b2]=a_median(dayTime,OH_M,1/24);
figure;subplot(2,1,1)
plot(time_texaqs_median,OH_texaqs_median,'ro-','markersize',8);
hold on;
plot(time_NYC_median,OH_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,OH_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,OH_tramp_median,'k*-','markersize',8);
set(gca,'Xlim',[0,1.0])
set(gca,'Ylim',[0,0.8]);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
ylabel('OH mixing ratio(pptv)');
legend('TEXAQS2000','NYC2001','MCMA2003','TRAMP2006',2);
grid on;

subplot(2,1,2);plot(time_texaqs_median,HO2_texaqs_median,'ro-','markersize',8);
hold on;
plot(time_NYC_median,HO2_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,HO2_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,HO2_tramp_median,'k*-','markersize',8);

set(gca,'Xlim',[0,1.0])
set(gca,'Ylim',[0,70]);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
ylabel('HO_2 mixing ratio(pptv)');
legend('TEXAQS2000','NYC2001','MCMA2003','TRAMP2006',2);
grid on;

clear all;

