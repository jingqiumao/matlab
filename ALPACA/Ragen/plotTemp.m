close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);


load merge_diurnal_v2.mat
tod=(doy_merge-floor(doy_merge))*24;

[aa,b21a,c21a]=a_median(tod(doy_merge<410),t_merge(doy_merge<410),2);

[ab,b21b,c21b]=a_median(tod(doy_merge>410),t_merge(doy_merge>410),2);

plot(aa,b21a,'b.-', ab, b21b,'k.-')
ylabel('Temp');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Temp (C)')
grid
legend('Jan','Feb');