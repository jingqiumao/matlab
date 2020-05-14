set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);
diurnal_interval=1;
linesize=4;

load('NCOREdata2017.mat')
%calcualte dailyavg
for iday=1:length(pm25_time)
    currentday=floor(pm25_time(iday));
    k=find((pm25_time>=currentday)&(pm25_time<currentday+1));
    pm25_dailyavg(iday)=nanmean(pm25(k));
end

pm25_Jan_top25=quantile(pm25_dailyavg(pm25_time<32),0.75);
pm25_Feb_top25=quantile(pm25_dailyavg(pm25_time>=32 & pm25_time<60),0.75);

tod=(SO2_time-floor(SO2_time)).*24+0.5;

subplot(2,3,1)
if isequal(SO2_time, pm25_time)
    indxJan= (SO2_time<32& pm25_dailyavg>=pm25_Jan_top25);
scatter(pm25(indxJan),SO2(indxJan), 30,tod(indxJan),'filled'); grid;hcb=colorbar;title('January 2017');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Hour of day');
hold on;

tmp_x=pm25(indxJan);
tmp_y=SO2(indxJan);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)
end

subplot(2,3,4)
indxFeb= (SO2_time>=32&SO2_time<60 & pm25_dailyavg>=pm25_Feb_top25);
scatter(pm25(indxFeb),SO2(indxFeb), 30,tod(indxFeb),'filled'); grid;hcb=colorbar;title('Feburary 2017');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Hour of day');
hold on;

tmp_x=pm25(indxFeb);
tmp_y=SO2(indxFeb);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)

load('NCOREdata2018.mat')
for iday=1:length(pm25_time)
    currentday=floor(pm25_time(iday));
    k=find((pm25_time>=currentday)&(pm25_time<currentday+1));
    pm25_dailyavg(iday)=nanmean(pm25(k));
end

pm25_Jan_top25=quantile(pm25_dailyavg(pm25_time<32),0.75);
pm25_Feb_top25=quantile(pm25_dailyavg(pm25_time>=32 & pm25_time<60),0.75);

tod=(SO2_time-floor(SO2_time)).*24+0.5;

subplot(2,3,2)
if isequal(SO2_time, pm25_time)
    indxJan= (SO2_time<32& pm25_dailyavg>=pm25_Jan_top25);
scatter(pm25(indxJan),SO2(indxJan), 30,tod(indxJan),'filled'); grid;hcb=colorbar;title('January 2018');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Hour of day');
hold on;

tmp_x=pm25(indxJan);
tmp_y=SO2(indxJan);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)
end

subplot(2,3,5)
indxFeb= (SO2_time>=32&SO2_time<60& pm25_dailyavg>=pm25_Feb_top25);
scatter(pm25(indxFeb),SO2(indxFeb), 30,tod(indxFeb),'filled'); grid;hcb=colorbar;title('Feburary 2018');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Time of day');
hold on;

tmp_x=pm25(indxFeb);
tmp_y=SO2(indxFeb);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)

load('NCOREdata2019.mat')
for iday=1:length(pm25_time)
    currentday=floor(pm25_time(iday));
    k=find((pm25_time>=currentday)&(pm25_time<currentday+1));
    pm25_dailyavg(iday)=nanmean(pm25(k));
end

pm25_Jan_top25=quantile(pm25_dailyavg(pm25_time<32),0.75);
pm25_Feb_top25=quantile(pm25_dailyavg(pm25_time>=32 & pm25_time<60),0.75);

tod=(SO2_time-floor(SO2_time)).*24+0.5;

subplot(2,3,3)
if isequal(SO2_time, pm25_time)
    indxJan= (SO2_time<32& pm25_dailyavg>=pm25_Jan_top25);
scatter(pm25(indxJan),SO2(indxJan), 30,tod(indxJan),'filled'); grid;hcb=colorbar;title('January 2019');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Hour of day');
hold on;

tmp_x=pm25(indxJan);
tmp_y=SO2(indxJan);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)
end

subplot(2,3,6)
indxFeb= (SO2_time>=32&SO2_time<60& pm25_dailyavg>=pm25_Feb_top25);
scatter(pm25(indxFeb),SO2(indxFeb), 30,tod(indxFeb),'filled'); grid;hcb=colorbar;title('Feburary 2019');ylabel('SO2 (ppb)');xlabel('BAM PM2.5 (ug/m3)');
title(hcb,'Hour of day');
hold on;

tmp_x=pm25(indxFeb);
tmp_y=SO2(indxFeb);

idx = isnan(tmp_y)|isnan(tmp_x);
z2 = polyfit(tmp_x(~idx), tmp_y(~idx), 1);
r2 = corrcoef(tmp_x(~idx), tmp_y(~idx));

Rsq = r2(1,2).^2;
x_temp=0:1:100;
y_temp=z2(2)+z2(1).*x_temp;
plot(x_temp,y_temp,'r--');

txt = ['y=' num2str(z2(1)) '*x+' num2str(z2(2))];;
text(45,10,txt)
txt = ['R=' num2str(r2(1,2))];;
text(45,5,txt)