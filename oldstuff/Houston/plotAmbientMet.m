clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

% Calculated by Xinrong
% (1) TexAQS2000: doy=doy(CST)-0.3417/24;
% (2) NYC2001: doy=doy(EDT)-1.025/24; 
% (3) MCMA2003: doy=doy(CST)-0.6083/24;
% (4) TRAMP2006: doy=doy(CST)-0.3360/24;
load texaqs_merge_10min
VOC=HCHO+Butadiene_13.*4+Isoprene.*5+Acrolein.*3+Methacrolein.*4+Methyl_vinyl_ketone.*4+MEK.*4+Benzene.*6+Toluene.*7+Acetaldehyde.*2+i_pentane.*5+...	
n_pentane.*5+T_2_pentene.*5+C_2_pentene.*5+X2_methyl_2_butene.*5+Propanal.*3+Acetone.*3+X2_methylpentane.*6+Cyclopentane.*5+MTBE.*5+X3_methylpentane.*6+...	
Hexane.*6+Methylcyclopentane.*6+Cyclohexane.*6+X2_2_4_trimethylpentane.*8+X3_methyl_2_butanone.*5+n_Heptane.*7+methylcyclohexane.*7+X2_pentanone.*5+...	
X3_pentanone.*5+Octane.*8+Ethylbenzene.*8+m_p_Xylene.*8+Nonane.*9+o_Xylene.*8+Styrene.*8+alpha_Pinene.*10+Cumene.*9+X1_3_5_trimethylbenzene.*9+...	
Decane.*10+X1_2_4_trimethylbenzene.*9+X1_2_3_trimethylbenzene.*9+Limonene.*10+X1_pentene.*5+X1_hexene.*6+Tetrachloroethylene.*2+Acetylene.*2+...	
Butene_2.*4+Cyclopentene.*5+Dimethylbutane_22.*6+Ethane.*2+Ethylene.*2+i_Butane.*4+Methylpropene.*4+n_Butane.*4+Butene_1.*4+Methyl_2_butene_1.*5+...	
Methyl_3_butene_1.*5+Butyne_1.*4+Propane.*3+Propylene.*3+Propyne.*3+trans_2_Butene.*4+Methylchloroform.*2+Chloromethylbuteneone.*5+Chloromethylbutenal.*5;

Alkene=Butadiene_13+Isoprene+T_2_pentene+C_2_pentene+X2_methyl_2_butene+alpha_Pinene+Limonene+X1_pentene+X1_hexene+Butene_2+Cyclopentene+Ethylene+Methylpropene...
    +Butene_1+Methyl_2_butene_1+Methyl_3_butene_1+Propylene+trans_2_Butene;
Alkane=i_pentane+n_pentane+X2_methylpentane+Cyclopentane+X3_methylpentane+Hexane+Methylcyclopentane+Cyclohexane+X2_2_4_trimethylpentane+n_Heptane+...
    methylcyclohexane+Octane+Nonane+Decane+Dimethylbutane_22+Ethane+i_Butane+n_Butane+Propane;
OVOCs=HCHO+Acrolein+Methacrolein+Methyl_vinyl_ketone+MEK+Acetaldehyde+Propanal+Acetone+X3_methyl_2_butanone+X2_pentanone+X3_pentanone;
Aromatics=Benzene+Toluene+MTBE+Ethylbenzene+m_p_Xylene+o_Xylene+Styrene+Cumene+X1_3_5_trimethylbenzene+X1_2_4_trimethylbenzene+X1_2_3_trimethylbenzene;
otherVOCs=Butyne_1+Acetylene+Tetrachloroethylene+Propyne+Methylchloroform+Chloromethylbuteneone+Chloromethylbutenal;

Time=Time-0.3417/24;
dayTime=Time-floor(Time);
[time_texaqs_median,Temp_texaqs_median]=a_median(dayTime,Temp,1/24);
[time_texaqs_median,CO_texaqs_median]=a_median(dayTime,CO,1/24);
[time_texaqs_median,O3_texaqs_median]=a_median(dayTime,O3,1/24);
[time_texaqs_median,NOx_texaqs_median]=a_median(dayTime,NO+NO2,1/24);
[time_texaqs_median,NO2_texaqs_median]=a_median(dayTime,NO2,1/24);
[time_texaqs_median,JO1D_texaqs_median]=a_median(dayTime,JO1D,1/24);
[time_texaqs_median,VOC_texaqs_median]=a_median(dayTime,VOC,1/24);
[time_texaqs_median,Alkene_texaqs_median]=a_median(dayTime,Alkene,1/24);
[time_texaqs_median,Alkane_texaqs_median]=a_median(dayTime,Alkane,1/24);
[time_texaqs_median,OVOCs_texaqs_median]=a_median(dayTime,OVOCs,1/24);
[time_texaqs_median,Aromatics_texaqs_median]=a_median(dayTime,Aromatics,1/24);
[time_texaqs_median,otherVOCs_texaqs_median]=a_median(dayTime,otherVOCs,1/24);



load NYC2001_merge_1min
Time=Time-1.025/24;

dayTime=Time-floor(Time);%I decide to use local time.
[time_NYC_median,Temp_NYC_median]=a_median(dayTime,Temp,1/24);
[time_NYC_median,CO_NYC_median]=a_median(dayTime,CO.*1000,1/24);
[time_NYC_median,O3_NYC_median]=a_median(dayTime,O3.*1000,1/24);
[time_NYC_median,NOx_NYC_median]=a_median(dayTime,(NO+NO2).*1000,1/24);
[time_NYC_median,JO1D_NYC_median]=a_median(dayTime,JO1D,1/24);
[time_NYC_median,VOC_NYC_median]=a_median(dayTime,NMHC.*1000,1/24);

load MCMA_05022005_with_model
Time=Time-0.6083/24;
press(press==0)=NaN;
M=2.687E19.*(press./1013.25).*(273.15./(temp+273.15));
dayTime=Time-floor(Time);
[time_mcma_median,Temp_mcma_median]=a_median(dayTime,temp,1/24);
[time_mcma_median,CO_mcma_median]=a_median(dayTime,CO.*1000,1/24);
[time_mcma_median,O3_mcma_median]=a_median(dayTime,O3_C.*1000,1/24);
[time_mcma_median,NOx_mcma_median]=a_median(dayTime,NOx*1000,1/24);
[time_mcma_median,JO1D_mcma_median]=a_median(dayTime,JO1D,1/24);
[time_mcma_median,VOC_mcma_median]=a_median(dayTime,VOC.*1e9./M,1/24);

load merge_meas_OHRcal_OHRmeas_10min_new_basedonModTime
Time=Time-0.3360/24;
Press(Press==0)=NaN;
M=2.687E19.*(Press./1013.25).*(273.15./(Temp));
dayTime=Time-floor(Time);
[time_tramp_median,Temp_tramp_median]=a_median(dayTime,Temp,1/24);
[time_tramp_median,CO_tramp_median]=a_median(dayTime,CO,1/24);
[time_trampa_median,O3_tramp_median]=a_median(dayTime,O3,1/24);
[time_tramp_median,NOx_tramp_median]=a_median(dayTime,NO_new+NO2_UH,1/24);
[time_tramp_median,NO2_tramp_median]=a_median(dayTime,NO2_UH,1/24);
[time_tramp_median,JO1D_tramp_median]=a_median(dayTime,JO1D,1/24);
[time_tramp_median,VOC_tramp_median]=a_median(dayTime,VOC_total_ppbC,1/24);
% 
% figure;
% mylinewidth=3;
% vInterval=0;
% hInterval=0.05;
% leftD=0.12;
% bottomD=-0.08;
% widthF=0.75;
% heightF=0.15;

% subplot('Position',[leftD bottomD+6*heightF+6*vInterval widthF heightF]);
subplot(2,3,1)
plot(time_texaqs_median,Temp_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,Temp_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,Temp_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,Temp_tramp_median,'k*-','markersize',8);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b1) max(b1)]);
% text(0.05,40,'Temp(C)');
title('Temperature(\circC)');
grid on;

%subplot('Position',[leftD bottomD+5*heightF+5*vInterval widthF heightF]);
subplot(2,3,2)
plot(time_texaqs_median,CO_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,CO_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,CO_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,CO_tramp_median,'k*-','markersize',8);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b2) max(b2)]);
% text(0.05,8,'CO(ppbv)');
title('CO(ppbv)');
grid on;

% subplot('Position',[leftD bottomD+4*heightF+4*vInterval widthF heightF]);
subplot(2,3,3)
plot(time_texaqs_median,O3_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,O3_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,O3_mcma_median,'gs-','markersize',8);
plot(time_trampa_median,O3_tramp_median,'k*-','markersize',8);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b3) max(b3)]);
% text(0.05,15,'O3(ppbv)');
title('O_3(ppbv)');
grid on;

% subplot('Position',[leftD bottomD+3*heightF+3*vInterval widthF heightF]);
subplot(2,3,5)
plot(time_texaqs_median,NOx_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,NOx_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,NOx_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,NOx_tramp_median,'k*-','markersize',8);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b4) max(b4)]);
% text(0.05,250,'NOx(ppbv)');
title('NOx(ppbv)');
grid on;

% subplot('Position',[leftD bottomD+2*heightF+2*vInterval widthF heightF]);
subplot(2,3,4)
plot(time_texaqs_median,JO1D_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,JO1D_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,JO1D_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,JO1D_tramp_median,'k*-','markersize',8);
% set(gca,'XTick',[0 0.25 0.5 0.75 1.0]);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b5) max(b5)]);
% text(0.05,28,'Temperature(\circC)');
title('JO^1D(s^-^1)');
grid on;

% subplot('Position',[leftD bottomD+1*heightF+1*vInterval widthF heightF]);
subplot(2,3,6)
plot(time_texaqs_median,VOC_texaqs_median,'ro-','markersize',8);hold on;
plot(time_NYC_median,VOC_NYC_median,'b+-','markersize',10);
plot(time_mcma_median,VOC_mcma_median,'gs-','markersize',8);
plot(time_tramp_median,VOC_tramp_median,'k*-','markersize',8);
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
% set(gca,'XTicklabel',[]);
% set(gca,'Ylim',[min(b6) max(b6)]);
% text(0.05,2,'JO^1D*10^5(S^-^1)');
title('NMVOC(ppbC)');
grid on;
legend('TEXQAS2000','NYC2001','MCMA2003','TRAMP2006');
set(gca,'Xlim',[0,1.0])
set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
xlabel('Time of day  (hour)');

% xlabel('Time of day  (hour)');
% % subplot('Position',[leftD bottomD+0*heightF+0*vInterval widthF heightF]);
% % plot(Time(y),NO(y),'r','linewidth',mylinewidth);
% % hold
% % plot(Time(y),NO2(y),'y.-','linewidth',mylinewidth);
% % set(gca,'Xlim',[min(Time(y)) max(Time(y)) ]);
% % set(gca,'Ylim',[min(NO(y)) max(NO(y))]);
% % ylabel(gca,'NO(pptv)');
% 
% set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
% % [a,b2]=a_median(dayTime,OH_M,1/24);
% % figure;subplot(2,1,1)
% % plot(time_texaqs_median,OH_texaqs_median.*1.64,'ro-','markersize',8);
% % hold on;
% % plot(time_NYC_median,OH_NYC_median.*1.64,'b+-','markersize',10);
% % plot(time_mcma_median,OH_mcma_median.*1.64,'gs-','markersize',8);
% % plot(time_tramp_median,OH_tramp_median,'k*-','markersize',8);
% % set(gca,'Xlim',[0,1.0])
% % set(gca,'Ylim',[0,0.8]);
% % set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
% % xlabel('Time of day  (hour)');
% % ylabel('OH mixing ratio(pptv)');
% % legend('TEXAQS2000','NYC2001','MCMA2003','TRAMP2006');
% % grid on;
% % 
% % subplot(2,1,2);plot(time_texaqs_median,HO2_texaqs_median.*1.64,'ro-','markersize',8);
% % hold on;
% % plot(time_NYC_median,HO2_NYC_median.*1.64,'b+-','markersize',10);
% % plot(time_mcma_median,HO2_mcma_median.*1.64,'gs-','markersize',8);
% % plot(time_tramp_median,HO2_tramp_median,'k*-','markersize',8);
% % 
% % set(gca,'Xlim',[0,1.0])
% % set(gca,'Ylim',[0,70]);
% % set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
% % xlabel('Time of day  (hour)');
% % ylabel('HO2 mixing ratio(pptv)');
% % legend('TEXAQS2000','NYC2001','MCMA2003','TRAMP2006');
% % grid on;
% % 
% % clear all;
% 
