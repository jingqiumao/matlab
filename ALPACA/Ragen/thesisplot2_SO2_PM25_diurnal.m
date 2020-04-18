close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

load merge_diurnal_v3.mat
tod=(doy_merge-floor(doy_merge))*24;
[a,b9a,c9]=a_median(tod(doy_merge<400),pm25_ugm3(doy_merge<400),2);
[a,b22a,c22]=a_median(tod(doy_merge<400),SO2_ppb(doy_merge<400),2);

[a,b9b,c9]=a_median(tod(doy_merge>400),pm25_ugm3(doy_merge>400),2);
[a,b22b,c22]=a_median(tod(doy_merge>400),SO2_ppb(doy_merge>400),2);

subplot(2,1,1)
plot(a,b22a,'r.-')
hold on
plot(a,b9a,'b.-')
ylim([0 25])
ylabel('SO2 and PM2.5');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
legend('SO2(ppb)','PM2.5(ug/m3)')
title('January')
grid

subplot(2,1,2)
plot(a,b22b,'r.-')
hold on
plot(a,b9b,'b.-')
ylim([0 25])
ylabel('SO2 and PM2.5');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
legend('SO2(ppb)','PM2.5(ug/m3)')
title('Feburary')
grid