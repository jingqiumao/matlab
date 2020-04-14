set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/ACSM/';
filename='ACSM Time Series.xls';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',0);
data_ACSM=readtable(strcat(tempdir,filename),opts);
for i=1:length(data_ACSM.ACSMTime_UTC_)
    ACSM_time=data_ACSM.ACSMTime_UTC_(i);
    doy_ACSM(i)=datenum(ACSM_time)-datenum(2020,1,1)+1;
end

doy_ACSM=doy_ACSM'-9/24;%correct for UTC


tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/DEC_2020/';
filename='Dec_Jan19_Mar31_mrg.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
data_DEC=readtable(strcat(tempdir,filename),opts);
for i=1:length(data_DEC.DATE)
    DEC_time=data_DEC.DATE(i);
    doy_DEC(i)=datenum(DEC_time)-datenum(2020,1,1)+1;
end
doy_DEC=doy_DEC';

delta_a = 1/24;
for i=1:length(doy_DEC)
    %here I assume DEC time
      k=find((doy_ACSM<=doy_DEC(i)+delta_a) & (doy_ACSM>=doy_DEC(i)));
      if ~isempty(k)
            kk=find(~(isnan(data_ACSM.Org(k))));
            if isempty(kk)
               OA_ACSM_1hr(i)=NaN;
            else
               OA_ACSM_1hr(i)=mean(data_ACSM.Org(k(kk)));
            end
        else
            OA_ACSM_1hr(i)=NaN;
      end
      %so4
      if ~isempty(k)
            kk=find(~(isnan(data_ACSM.SO4(k))));
            if isempty(kk)
               SO4_ACSM_1hr(i)=NaN;
            else
               SO4_ACSM_1hr(i)=mean(data_ACSM.SO4(k(kk)));
            end
        else
            SO4_ACSM_1hr(i)=NaN;
      end
      
      %nitrate
      if ~isempty(k)
            kk=find(~(isnan(data_ACSM.NO3(k))));
            if isempty(kk)
               NO3_ACSM_1hr(i)=NaN;
            else
               NO3_ACSM_1hr(i)=mean(data_ACSM.NO3(k(kk)));
            end
        else
            NO3_ACSM_1hr(i)=NaN;
      end
      
      %NH4
      if ~isempty(k)
            kk=find(~(isnan(data_ACSM.NH4(k))));
            if isempty(kk)
               NH4_ACSM_1hr(i)=NaN;
            else
               NH4_ACSM_1hr(i)=mean(data_ACSM.NH4(k(kk)));
            end
        else
            NH4_ACSM_1hr(i)=NaN;
      end
      
      %Chl
      if ~isempty(k)
            kk=find(~(isnan(data_ACSM.Chl(k))));
            if isempty(kk)
               Chl_ACSM_1hr(i)=NaN;
            else
               Chl_ACSM_1hr(i)=mean(data_ACSM.Chl(k(kk)));
            end
        else
            Chl_ACSM_1hr(i)=NaN;
      end
end

tod=(doy_DEC-floor(doy_DEC)).*24;
indxJan= (doy_DEC<32);

[a,b1,c1]=a_median(tod(indxJan),OA_ACSM_1hr(indxJan),1);
[a,b2,c2]=a_median(tod(indxJan),SO4_ACSM_1hr(indxJan),1);
[a,b3,c3]=a_median(tod(indxJan),NO3_ACSM_1hr(indxJan),1);
[a,b4,c4]=a_median(tod(indxJan),NH4_ACSM_1hr(indxJan),1);
[a,b5,c5]=a_median(tod(indxJan),Chl_ACSM_1hr(indxJan),1);

[a,b9,c9]=a_median(tod(indxJan),data_DEC.PM25__g_m3_(indxJan),1);
[a,b10,c10]=a_median(tod(indxJan),data_DEC.SO2_ppb_(indxJan),1);
[a,b11,c11]=a_median(tod(indxJan),data_DEC.CO_ppm_(indxJan),1);
[a,b12,c12]=a_median(tod(indxJan),data_DEC.Temp_C_(indxJan),1);

colorscale=0.8;
pointsize=12;
linesize=4;

figure
subplot(4,3,1)
plot(tod(indxJan),OA_ACSM_1hr(indxJan),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 15])
hold on
plot(a,b1,'k.-','LineWidth',linesize)
ylabel('OA(ug/m3)')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('OA')
grid

subplot(4,4,2)
plot(tod(doy_merge<400),nitrate_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 5])
hold on
plot(a,b2,'k.-','LineWidth',linesize)
ylabel('Nitrate(ug/m3)')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Nitrate')
grid

subplot(4,4,3)
plot(tod(doy_merge<400),ammonium_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([-0.05 0.3])
hold on
plot(a,b3,'k.-','LineWidth',linesize)
ylabel('Ammonium(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Ammonium')
grid

subplot(4,4,4)
plot(tod(doy_merge<400),chloride_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 6])
hold on
plot(a,b4,'k.-','LineWidth',linesize)
ylabel('Chloride(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Chloride')
grid

subplot(4,4,5)
plot(tod(doy_merge<400),Na_IC_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 1])
hold on
plot(a,b5,'k.-','LineWidth',linesize)
% plot (a,b13,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Na(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Na')
grid

subplot(4,4,6)
plot(tod(doy_merge<400),K_IC_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 2.0])
hold on
plot(a,b6,'k.-','LineWidth',linesize)
% plot (a,b14,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('K(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('K')
grid

subplot(4,4,7)
plot(tod(doy_merge<400),Ca_IC_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 1.5])
hold on
plot(a,b7,'k.-','LineWidth',linesize)
% plot (a,b15,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Ca(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Ca')
grid

subplot(4,4,8)
plot(tod(doy_merge<400),Mg_IC_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 0.3])
hold on
plot(a,b8,'k.-','LineWidth',linesize)
% plot (a,b16,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Mg(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mg')
grid

subplot(4,4,9)
plot(tod(doy_merge<400),pm25_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 30])
hold on
plot(a,b9,'r.-','LineWidth',linesize)
ylabel('PM2.5(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5')
grid

subplot(4,4,10)
plot(tod(doy_merge<400),NOy_ppb(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 110])
hold on
plot(a,b10,'r.-','LineWidth',linesize)
ylabel('NOy(ppb)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('NOy')
grid

subplot(4,4,11)
plot(tod(doy_merge<400),O3_ppb(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 20])
hold on
plot(a,b11,'r.-','LineWidth',linesize)
ylabel('O3(ppb)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3')
grid

subplot(4,4,12)
plot(tod(doy_merge<400),CO_ppb(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 1.5])
hold on
plot(a,b12,'r.-','LineWidth',linesize)
ylabel('CO(ppm)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO')
grid

% subplot(4,4,13)
% plot(a,b17,'.-')
% ylabel('Mn');
% xlabel('Time of day (AST)');
% set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
% title('Mn')
% grid

subplot(4,4,13)
plot(tod(doy_merge<400),SO2_ppb(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 30])
hold on
plot(a,b22,'r.-','LineWidth',linesize)
ylabel('SO2(ppb)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('SO2')
grid

subplot(4,4,14)
plot(tod(doy_merge<400),Fe_ICPMS_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 0.05])
hold on
plot(a,b18,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Fe(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Fe')
grid

subplot(4,4,15)
plot(tod(doy_merge<400),Cu_ICPMS_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([-0.1 0.2])
hold on
plot(a,b19,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Cu(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Cu')
grid

subplot(4,4,16)
plot(tod(doy_merge<400),Zn_ICPMS_ugm3(doy_merge<400),'.', 'Color', [0,0,0]+colorscale, 'markersize',pointsize)
ylim([0 0.2])
hold on
plot(a,b20,'.-','Color', [0, 0.447, 0.741],'LineWidth',linesize)
ylabel('Zn(ug/m3)');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Zn')
grid

sgtitle('Janurary');