close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',1);

binsize=2;
xmin=290;
xmax=305;
% load C:\mao\BEARPEX\paper\mrg_BEARPEX2009_obs_mod_10min_20110615.mat
load C:\mao\BEARPEX\paper\USQT\mrg_BEARPEX2009_obs_mod_10min_20110916_slower_USQT_100times.mat
RO2_CIT=OLTP_CIT+ETEP_CIT+OLIP_CIT+BENP_CIT+TOLP_CIT+PER1_CIT+PER2_CIT+XYLP_CIT+XYOP_CIT+...
    APIP_CIT+UALP_CIT+LIMP_CIT + MAO3_CIT + MVKO2_CIT+ ISOP_CIT + ISOPNBO2_CIT + ...
    ISOPNDO2_CIT + IEPOXOO_CIT + IAO2_CIT + DIBOO_CIT + MOBAOO_CIT + MACRO2_CIT + MTO2_CIT+...
    SQTO2_CIT + MACRNO2_CIT + MAOPO2_CIT + MBORO2_CIT;
RO2_CIT=ISOP_CIT + MACRO2_CIT  + MAO3_CIT + MVKO2_CIT ;
RO2_CIT=RO2_CIT./M_CIT*1e12;

tod=doy-floor(doy);
% filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem)& ~isnan(OH_wave));
% filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters));
filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
[a1,b1]=a_median(TEMP(filter1),OH_wave(filter1),binsize);
[a2,b2]=a_median(TEMP(filter1),OH_chem(filter1),binsize);

%filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters));
[a3,b3]=a_median(TEMP(filter1),OH_mod_RACM2(filter1),binsize);
[a4,b4]=a_median(TEMP(filter1),OH_mod_CIT(filter1),binsize);
[a5,b5]=a_median(TEMP(filter1),OH_mod_Peeters(filter1),binsize);
[a6,b6]=a_median(TEMP(filter1),OH_mod_Peeters_Crounse(filter1),binsize);
subplot(3,1,1)
% plot(TEMP(filter1),OH_chem(filter1),'b.','Markersize',10);hold on;
b2(b2<0)=NaN;
h=plot(a1,b1,'bo-',a2,b2,'ko-',a3,b3,'g.-',a4,b4,'r.-',a5,b5,'m.-',a6,b6,'r--','linewidth',2);
% h=plot(a1,b1,'b.-',a2,b2,'k.-',a6,b6,'r.-','linewidth',2);
hold on;
b2=b2*0.8;
errorbar(a2,b2,b2*0.45,'k','linewidth',2)
xlim([xmin xmax]);
ylim([-0.05 0.35]);
grid on;
% legend(h,'OH\_chem','OH\_wave','RACM2','CIT','Peeters');
% plot (a2,b2,'r-o','linewidth',4);
% xlabel('Temperature(C)');
ylabel('OH (pptv)');
% hold on;
% ciplot(b2(2:6),b2(2:6).*0.4,a2(2:6),'k');

%  title('OH (9am-15pm)');
% title('OH (22pm-4am)');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %plot OH_wave-OH_chem
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
% [a1,b1,c1]=a_median(TEMP(filter1),OH_wave(filter1)-OH_chem(filter1),binsize);
% b1(1)=NaN;
% subplot(4,1,2)
% % h=plot(a1,b1,'bo-','linewidth',2);
% errorbar(a1,b1,c1,'k','linewidth',2);
% xlim([xmin xmax]);
% ylim([-0.05 0.35]);
% grid on;
% ylabel('OH [pptv]');
% legend('difference');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%plot HO2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filter1=find((tod>9/24&tod<15/24)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) );
%filter1=find((tod>9/24&tod<15/24)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
[a1,b1]=a_median(TEMP(filter1),HO2_wave(filter1),binsize);
[a2,b2]=a_median(TEMP(filter1),HO2_C3F6On(filter1),binsize);

%filter1=find((tod>9/24&tod<15/24)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
[a3,b3]=a_median(TEMP(filter1),HO2_mod_RACM2(filter1),binsize);
[a4,b4]=a_median(TEMP(filter1),HO2_mod_CIT(filter1),binsize);
[a5,b5]=a_median(TEMP(filter1),HO2_mod_Peeters(filter1),binsize);
[a6,b6]=a_median(TEMP(filter1),HO2_mod_Peeters_Crounse(filter1),binsize);
[a5,bb5]=a_median(TEMP(filter1),RO2_CIT(filter1),binsize);
subplot(3,1,2)
% plot(TEMP(filter1),HO2_C3F6On(filter1),'b.','Markersize',10);hold on;

% plot(AmbTempAvg(filter1),HO2_wave(filter1),'r+','Markersize',18);
h=plot(a1,b1,'bo-',a3,b3,'g.-',a4,b4,'r.-',a5,b5,'m.-',a6,b6,'r--','linewidth',2);
% h=plot(a1,b1,'b.-',a6,b6,'r.-','linewidth',2);
grid on;
xlim([xmin xmax]);
ylim([0 60]);
hold on;
ciplot(b1,b1-bb5.*0.6,a1,'b');
% legend(h,'HO2\_wave','RACM2','CIT','Peeters');
% plot (a2,b2,'r-o','linewidth',4);
% xlabel('Temperature(K)');
ylabel('HO_2 (pptv)');
%  title('HO2 (9am-15pm)');
% title('HO2 (22pm-4am)');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %plot HO2/OH ratio
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% filter1=find((tod>9/24&tod<15/24)&~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters)&~isnan(HO2_wave) & ~isnan(HO2_C3F6On) & ~isnan(HO2_mod_RACM2) & ~isnan(HO2_mod_CIT) & ~isnan(HO2_mod_Peeters));
% 
% [a1,b1]=a_median(TEMP(filter1),HO2_wave(filter1)./OH_wave(filter1),binsize);
% 
% [a2,b2]=a_median(TEMP(filter1),HO2_wave(filter1)./OH_chem(filter1),binsize);
% 
% [a3,b3]=a_median(TEMP(filter1),HO2_mod_RACM2(filter1)./OH_mod_RACM2(filter1),binsize);
% [a4,b4]=a_median(TEMP(filter1),HO2_mod_CIT(filter1)./OH_mod_CIT(filter1),binsize);
% [a5,b5]=a_median(TEMP(filter1),HO2_mod_Peeters(filter1)./OH_mod_Peeters(filter1),binsize);
% % subplot(3,1,1)
% % plot(TEMP(filter1),OH_chem(filter1),'b.','Markersize',10);hold on;
% b2(b2<0)=NaN;
% subplot(3,1,3)
% h=plot(a2,b2,'ko-',a3,b3,'g.-',a4,b4,'r.-',a5,b5,'m.-','linewidth',2);
% xlim([xmin xmax]);
% %ylim([-0.05 0.35]);
% grid on;
% % legend(h,'OH\_chem','OH\_wave','RACM2','CIT','Peeters');
% % plot (a2,b2,'r-o','linewidth',4);
% % xlabel('Temperature(C)');
% ylabel('HO_2/OH');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%plot OHR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load C:\mao\BEARPEX\paper\OHR_mod.mat
tod=doy2009-floor(doy2009);


% load HOx_bearpex09_merge_mao_20110608
% load HOx_bearpex09_brune_merge_20110610
load C:\mao\BEARPEX\paper\HOx_OHR_BPX09_10min_20110608
hour=DOY-floor(DOY);
OHR_zero=1.5;
OHR_rob = -OHR_robDecay - OHR_zero;
OHR_noOL = -OHR_noOutLierDecay - OHR_zero;

OHR_R2min = 0.1 ;% set a minimum value for R^2
%
OHR_rob(OHR_robR2<=OHR_R2min)=NaN;
OHR_noOL(OHR_noOutLierR2<=OHR_R2min)=NaN;
OHR_max(OHR_maxR2<=OHR_R2min)=NaN;
%
% OHR_best combines the results from the noOutlier and robust programs. It
% may not actually be the best, but needs to be examined.
%
OHR_best=(OHR_robR2.*OHR_rob+OHR_noOutLierR2.*OHR_noOL)./...
    (OHR_robR2+OHR_noOutLierR2);

%I have to filter out OHR data due to the low reference cell signal.
OHR_best(DOY>176.71&DOY<177.7)=NaN;
OHR_best(TOHLMUVPowOn<0.05)=NaN;
OHR_best(TOHLMAirVeOn<0.3)=NaN;
%%%%tod is model hour;
filter2=tod>9/24&tod<15/24;
binarr=[292,294,296,298,300,302,304];
% binarr=[292,293,294,295,296,297,298,299,300,301,302,303,304];
[a2,b2]=a_median_bin(TEMP2009(filter2),OHR_mod_RACM2_2009(filter2),binarr);
[a3,b3]=a_median_bin(TEMP2009(filter2),OHR_mod_CIT_2009(filter2),binarr);
[a4,b4]=a_median_bin(TEMP2009(filter2),OHR_mod_Peeters_2009(filter2),binarr);
[a4,b4a]=a_median_bin(TEMP2009(filter2),OHR_mod_Peeters_2009_Crounse(filter2),binarr);
[a5,b5]=a_median_bin(TEMP2009(filter2),OHR_totmeas(filter2),binarr);
[a6,b6]=a_median_bin(TEMP2009(filter2),OHR_MBO_CIT_2009(filter2),binarr);
[a7,b7]=a_median_bin(TEMP2009(filter2),OHR_MBOP_CIT_2009(filter2),binarr);

% filter1=find(hour>9/24&hour<15/24);
% [a1,b1]=a_median_bin(AmbTempAvg(filter1),OHR_best(filter1),binarr);
DOY1=DOY(~isnan(DOY));
OHR_best1=OHR_best(~isnan(DOY));
OHR_obs=interp1(DOY1,OHR_best1,doy2009);
[a1,b1]=a_median_bin(TEMP2009(filter2),OHR_obs(filter2),binarr);
% daytimetemp=a2;
% daytimeratio=b2;
subplot(3,1,3)
h=plot (a1,b1,'bo-',a2,b2,'g.-',a3,b3,'r.-',a4,b4,'m.-',a4,b4a,'r--',a5,b5,'y.-','linewidth',2);
% h=plot (a1,b1,'b.-',a4,b4a,'r.-',a5,b5,'y.-','linewidth',2);
xlim([xmin xmax]);
ylim([-1 30]);
% title('OHR');
xlabel('Temperature(K)');
ylabel('OHR(s^-^1)');
% legend(h,'obs','RACM2','CIT','Peeters','LOH(meas)');
grid on
disp(b3-b5);

figure
% The data. Note: your original data did not match
% (9 vs 8 elements)
  t = a1 ;
  rel = b3-b5 ;

% Define your exponential function
  fh = @(x,p) rel(1)*exp(p(1)*(x-293));

% define the error function. this is the function to
% minimize: you can also use norm or whatever:
  errfh = @(p,x,y) sum((y(:)-fh(x(:),p)).^2)

% an initial guess of the exponential parameters
  p0 = [mean(rel)];

% search for solution
  P = fminsearch(errfh,p0,[],t,rel)

% plot the result
  plot(t,rel,'bo',t,fh(t,P),'r-')
grid on
ylabel('Missing OH reactivity (s-1)');
xlabel('Temp (K)');