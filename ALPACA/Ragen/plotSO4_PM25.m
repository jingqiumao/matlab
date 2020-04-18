close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

load merge_diurnal.mat
sulfate_ambient=sulfate_merge.*0.017./0.672;
figure
scatter(pm25_merge(doy_merge<410),sulfate_ambient(doy_merge<410), 40,CO_merge(doy_merge<410),'filled'); grid;colorbar;caxis([0 1.5]); title('Jan');ylabel('sulfate');xlabel('PM2.5');
hold on;
doy_merge=doy_merge';
pm25_merge=pm25_merge';
t_merge=t_merge';
 indx=find((doy_merge<410)&(t_merge<-25));
 sulfate_ambient(indx)=NaN;
x1=pm25_merge(doy_merge<410);
y1=sulfate_ambient(doy_merge<410);
idx = isnan(y1)|isnan(x1);
z1=polyfit(x1(~idx),y1(~idx),1)
r1=corrcoef(x1(~idx),y1(~idx));
x_temp=0:1:50;
y_temp=z1(2)+z1(1).*x_temp;
plot(x_temp,y_temp,'--');

txt = ['y=' num2str(z1(1)) '*x+' num2str(z1(2))];;
text(20,10,txt)

figure
scatter(pm25_merge(doy_merge>410),sulfate_merge(doy_merge>410).*0.017./0.672, 40,CO_merge(doy_merge>410),'filled'); grid;colorbar;caxis([0 1.5]); title('Feb');ylabel('sulfate');xlabel('PM2.5');

hold on;
 indx=find((doy_merge>410)&(sulfate_ambient<1)&(pm25_merge>15));
 sulfate_ambient(indx)=NaN;
x2=pm25_merge(doy_merge>410);
y2=sulfate_ambient(doy_merge>410);
idx = isnan(y2)|isnan(x2);
z2=polyfit(x2(~idx),y2(~idx),1)
r2=corrcoef(x2(~idx),y2(~idx));
x_temp=0:1:50;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(20,10,txt)
