close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

load merge_diurnal_v3.mat

figure
subplot(1,2,1)
scatter(pm25_ugm3(doy_merge<400),SO2_ppb(doy_merge<400), 30,t_merge(doy_merge<400),'filled'); grid;hcb=colorbar;title('January');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Temperature (C)');
hold on;

tmp_x=pm25_ugm3(doy_merge<400);
tmp_y=SO2_ppb(doy_merge<400);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:50;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(30,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(30,5,txt)

subplot(1,2,2)
scatter(pm25_ugm3(doy_merge>400),SO2_ppb(doy_merge>400), 30,t_merge(doy_merge>400),'filled'); grid;hcb=colorbar;title('Feburary');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Temperature (C)');
hold on
tmp_x=pm25_ugm3(doy_merge>400);
tmp_y=SO2_ppb(doy_merge>400);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:50;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(30,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(30,5,txt)