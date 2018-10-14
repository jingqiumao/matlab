close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',1);

% load C:\mao\BEARPEX\paper\mrg_BEARPEX2009_obs_mod_10min_20110808.mat
% load C:\mao\BEARPEX\paper\mrg_BEARPEX2009_obs_mod_10min_20110615.mat
load C:\mao\BEARPEX\paper\USQT\mrg_BEARPEX2009_obs_mod_10min_20110916_slower_USQT_100times.mat
tod=(doy-floor(doy))*24;
tag=find(~isnan(OH_chem) & ~isnan(OH_wave) & ~isnan(OH_mod_RACM2) & ~isnan(OH_mod_CIT) & ~isnan(OH_mod_Peeters));
[a,b1,c1]=a_median(tod(tag),OH_chem(tag).*M(tag)*1e-12,2);
[a,b11]=a_median(tod(tag),OH_wave(tag).*M(tag)*1e-12,2);
[a,b2]=a_median(tod(tag),OH_mod_RACM2(tag).*M(tag)*1e-12,2);
[a,b3]=a_median(tod(tag),OH_mod_CIT(tag).*M(tag)*1e-12,2);
[a,b4]=a_median(tod(tag),OH_mod_Peeters(tag).*M(tag)*1e-12,2);
[a,b5]=a_median(tod(tag),OH_mod_Peeters_Crounse(tag).*M(tag)*1e-12,2);


% test1=box_median(tod(tag),OH_chem(tag),2);
% h1=boxplot(test1,'notch','on','whisker',1);
% set(h1(7,:),'Visible','off') ;
b1=b1*0.8;
errorbar(a,b1,b1*0.45,'k','linewidth',2)
hold on;
b1(b1<0)=NaN;
plot(a,b11,'bo-',a,b1,'ko-',a,b2,'g.-',a,b3,'r.-',a,b4,'m.-',a,b5,'r--','linewidth',2)
% ciplot(b1,b1.*0.4,a,'k');
ylabel('OH  (molecules cm^-^3)')
xlabel('Time of day (PST)');
% legend('obs-wave','obs-chem')
xlim([0,24])
% ylim([-0.05 0.25])
% set(gca,'XTick',[0 0.25 0.5 0.75 1.0],'XTickLabel',['';'';'';'';'']);
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
grid

% legend('obs-wave','obs-chem','mod RACM2 base','mod RACM2+CIT','mod RACM2+Peeters');