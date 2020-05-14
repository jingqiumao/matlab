set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);
diurnal_interval=1;
linesize=4;

load('NCOREdata2013.mat')
tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxJan= (SO2_time<32);
[a1,b1,c1]=a_median(tod(indxJan),SO2(indxJan),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxJan= (pm25_time<32);
[a2,b2,c2]=a_median(tod(indxJan),pm25(indxJan),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxJan= (CO_time<32);
[a3,b3,c3]=a_median(tod(indxJan),CO(indxJan),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxJan= (O3_time<32);
%O3 is ppm.
O3=O3.*1000;
[a4,b4,c4]=a_median(tod(indxJan),O3(indxJan),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxJan= (t3m_time<32);
%temperature is F.
t3m=(t3m-32).*5/9;
[a5,b5,c5]=a_median(tod(indxJan),t3m(indxJan),diurnal_interval);

tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxFeb= (SO2_time>=32&SO2_time<60);
[a6,b6,c6]=a_median(tod(indxFeb),SO2(indxFeb),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxFeb= (pm25_time>=32&pm25_time<60);
[a7,b7,c7]=a_median(tod(indxFeb),pm25(indxFeb),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxFeb= (CO_time>=32&CO_time<60);
[a8,b8,c8]=a_median(tod(indxFeb),CO(indxFeb),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxFeb= (O3_time>=32&O3_time<60);
[a9,b9,c9]=a_median(tod(indxFeb),O3(indxFeb),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxFeb= (t3m_time>=32&t3m_time<60);
[a10,b10,c10]=a_median(tod(indxFeb),t3m(indxFeb),diurnal_interval);

figure
subplot(4,5,1)
plot(a1,b1,'r.-','LineWidth',linesize)
hold on
plot(a6,b6,'k.-','LineWidth',linesize)
legend('January','Feburary');
ylabel('SO2')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('SO2 (ppb)')
grid

subplot(4,5,2)
plot(a2,b2,'r.-','LineWidth',linesize)
hold on
plot(a7,b7,'k.-','LineWidth',linesize)
ylabel('PM2.5')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5 (ug/m3)')
grid

subplot(4,5,3)
plot(a3,b3,'r.-','LineWidth',linesize)
hold on
plot(a8,b8,'k.-','LineWidth',linesize)
ylabel('CO')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO (ppm)')
grid

subplot(4,5,4)
plot(a4,b4,'r.-','LineWidth',linesize)
hold on
plot(a9,b9,'k.-','LineWidth',linesize)
ylabel('O3')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3 (ppb)')
grid

subplot(4,5,5)
plot(a5,b5,'r.-','LineWidth',linesize)
hold on
plot(a10,b10,'k.-','LineWidth',linesize)
ylabel('Temp')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Temp (C)')
grid

%%%%%%%%%2014%%%%%%%%%%%%
load('NCOREdata2014.mat')
tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxJan= (SO2_time<32);
[a1,b1,c1]=a_median(tod(indxJan),SO2(indxJan),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxJan= (pm25_time<32);
[a2,b2,c2]=a_median(tod(indxJan),pm25(indxJan),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxJan= (CO_time<32);
[a3,b3,c3]=a_median(tod(indxJan),CO(indxJan),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxJan= (O3_time<32);
%O3 is ppm.
O3=O3.*1000;
[a4,b4,c4]=a_median(tod(indxJan),O3(indxJan),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxJan= (t3m_time<32);
%temperature is F.
t3m=(t3m-32).*5/9;
[a5,b5,c5]=a_median(tod(indxJan),t3m(indxJan),diurnal_interval);

tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxFeb= (SO2_time>=32&SO2_time<60);
[a6,b6,c6]=a_median(tod(indxFeb),SO2(indxFeb),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxFeb= (pm25_time>=32&pm25_time<60);
[a7,b7,c7]=a_median(tod(indxFeb),pm25(indxFeb),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxFeb= (CO_time>=32&CO_time<60);
[a8,b8,c8]=a_median(tod(indxFeb),CO(indxFeb),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxFeb= (O3_time>=32&O3_time<60);
[a9,b9,c9]=a_median(tod(indxFeb),O3(indxFeb),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxFeb= (t3m_time>=32&t3m_time<60);
[a10,b10,c10]=a_median(tod(indxFeb),t3m(indxFeb),diurnal_interval);

subplot(4,5,6)
plot(a1,b1,'r.-','LineWidth',linesize)
hold on
plot(a6,b6,'k.-','LineWidth',linesize)
ylabel('SO2')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('SO2 (ppb)')
grid

subplot(4,5,7)
plot(a2,b2,'r.-','LineWidth',linesize)
hold on
plot(a7,b7,'k.-','LineWidth',linesize)
ylabel('PM2.5')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5 (ug/m3)')
grid

subplot(4,5,8)
plot(a3,b3,'r.-','LineWidth',linesize)
hold on
plot(a8,b8,'k.-','LineWidth',linesize)
ylabel('CO')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO (ppm)')
grid

subplot(4,5,9)
plot(a4,b4,'r.-','LineWidth',linesize)
hold on
plot(a9,b9,'k.-','LineWidth',linesize)
ylabel('O3')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3 (ppb)')
grid

subplot(4,5,10)
plot(a5,b5,'r.-','LineWidth',linesize)
hold on
plot(a10,b10,'k.-','LineWidth',linesize)
ylabel('Temp')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Temp (C)')
grid

%%%%%%%%%2015%%%%%%%%%%%%
load('NCOREdata2015.mat')
tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxJan= (SO2_time<32);
[a1,b1,c1]=a_median(tod(indxJan),SO2(indxJan),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxJan= (pm25_time<32);
[a2,b2,c2]=a_median(tod(indxJan),pm25(indxJan),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxJan= (CO_time<32);
[a3,b3,c3]=a_median(tod(indxJan),CO(indxJan),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxJan= (O3_time<32);
%O3 is ppm.
O3=O3.*1000;
[a4,b4,c4]=a_median(tod(indxJan),O3(indxJan),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxJan= (t3m_time<32);
%temperature is F.
t3m=(t3m-32).*5/9;
[a5,b5,c5]=a_median(tod(indxJan),t3m(indxJan),diurnal_interval);

tod=(SO2_time-floor(SO2_time)).*24+0.5;
indxFeb= (SO2_time>=32&SO2_time<60);
[a6,b6,c6]=a_median(tod(indxFeb),SO2(indxFeb),diurnal_interval);

tod=(pm25_time-floor(pm25_time)).*24+0.5;
indxFeb= (pm25_time>=32&pm25_time<60);
[a7,b7,c7]=a_median(tod(indxFeb),pm25(indxFeb),diurnal_interval);

tod=(CO_time-floor(CO_time)).*24+0.5;
indxFeb= (CO_time>=32&CO_time<60);
[a8,b8,c8]=a_median(tod(indxFeb),CO(indxFeb),diurnal_interval);

tod=(O3_time-floor(O3_time)).*24+0.5;
indxFeb= (O3_time>=32&O3_time<60);
[a9,b9,c9]=a_median(tod(indxFeb),O3(indxFeb),diurnal_interval);

tod=(t3m_time-floor(t3m_time)).*24+0.5;
indxFeb= (t3m_time>=32&t3m_time<60);
[a10,b10,c10]=a_median(tod(indxFeb),t3m(indxFeb),diurnal_interval);

subplot(4,5,11)
plot(a1,b1,'r.-','LineWidth',linesize)
hold on
plot(a6,b6,'k.-','LineWidth',linesize)
ylabel('SO2')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('SO2 (ppb)')
grid

subplot(4,5,12)
plot(a2,b2,'r.-','LineWidth',linesize)
hold on
plot(a7,b7,'k.-','LineWidth',linesize)
ylabel('PM2.5')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5 (ug/m3)')
grid

subplot(4,5,13)
plot(a3,b3,'r.-','LineWidth',linesize)
hold on
plot(a8,b8,'k.-','LineWidth',linesize)
ylabel('CO')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO (ppm)')
grid

subplot(4,5,14)
plot(a4,b4,'r.-','LineWidth',linesize)
hold on
plot(a9,b9,'k.-','LineWidth',linesize)
ylabel('O3')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3 (ppb)')
grid

subplot(4,5,15)
plot(a5,b5,'r.-','LineWidth',linesize)
hold on
plot(a10,b10,'k.-','LineWidth',linesize)
ylabel('Temp')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Temp (C)')
grid