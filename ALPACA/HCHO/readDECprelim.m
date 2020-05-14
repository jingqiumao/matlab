tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/DEC_2020/';
filename='Dec_Jan1_Mar6.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
data_DEC2020=readtable(strcat(tempdir,filename),opts);
for i=1:length(data.DATE)
    DEC_time=data_DEC2020.DATE(i);
    doy_DEC(i)=datenum(DEC_time)-datenum(2020,1,1)+1;
end
doy_DEC=doy_DEC';
% 
% DEC_time=data(:,1);
% CO_ppm = data(:,2);
% O3_ppb = data(:,3);
% PM25_ugm3=data(:,5);
% SO2_ppb = data(:,6);
% Temp_C = data(:,7);
% doy_DEC=datenum(DEC_time)-datenum(2020,1,1)+1;

tod=(doy_DEC-floor(doy_DEC)).*24+0.5;
indxJan= (doy_DEC<32);

diurnal_interval=1;
colorscale=0.8;
pointsize=12;
linesize=4;

[a,b9,c9]=a_median(tod(indxJan),data_DEC2020.PM25__g_m3_(indxJan),diurnal_interval);
[a,b10,c10]=a_median(tod(indxJan),data_DEC2020.SO2_ppb_(indxJan),diurnal_interval);
[a,b11,c11]=a_median(tod(indxJan),data_DEC2020.CO_ppm_(indxJan),diurnal_interval);
[a,b12,c12]=a_median(tod(indxJan),data_DEC2020.Temp_C_(indxJan),diurnal_interval);

figure
subplot(2,2,1)
plot(tod(indxJan),data_DEC2020.PM25__g_m3_(indxJan),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 40])
hold on
plot(a,b9,'r.-','LineWidth',linesize)
% plot (a,b14,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('PM2.5(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5')
grid

subplot(2,2,2)
plot(tod(indxJan),data_DEC2020.SO2_ppb_(indxJan),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 20])
hold on
plot(a,b10,'r.-','LineWidth',linesize)
% plot (a,b15,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('SO2');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('SO2')
grid

subplot(2,2,3)
plot(tod(indxJan),data_DEC2020.CO_ppm_(indxJan),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 1])
hold on
plot(a,b11,'r.-','LineWidth',linesize)
% plot (a,b16,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('CO(ppm)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO')
grid

subplot(2,2,4)
plot(tod(indxJan),data_DEC2020.Temp_C_(indxJan),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([-30 -15])
hold on
plot(a,b12,'r.-','LineWidth',linesize)
ylabel('Temp(C)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Temp')
grid