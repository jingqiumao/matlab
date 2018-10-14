clear all;
close all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

% load HOx_merge_04032011_Brune
load C:\mao\BEARPEX\paper\HOx_OHR_BPX09_10min_20110608
hour=(DOY-floor(DOY))*24;
OHR_zero=1.5;
OHR_rob = -OHR_robDecay - OHR_zero;
OHR_noOL = -OHR_noOutLierDecay - OHR_zero;

OHR_R2min = 0.1; % set a minimum value for R^2
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

filter1=hour>9&hour<15&NOLowOn<1&XOHAxis1<0.8&XOHAxis1>-0.4;
filter2=(hour>22|hour<4)&NOLowOn<1&XOHAxis1<0.8&XOHAxis1>-0.4;
hour(hour<4)=hour(hour<4)+24;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%plot daytime discrepancy with OHR 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3)
diff=OH_wave-OH_chem*0.8;
binarr=[5,10,15,17.5,20,22,24,27,30];
[a3,b3]=a_median_bin(OHR_best(filter1),diff(filter1),binarr);
[a3u,b3u]=a_upperq_bin(OHR_best(filter1),diff(filter1),binarr);
[a3l,b3l]=a_lowerq_bin(OHR_best(filter1),diff(filter1),binarr);
scatter(OHR_best(filter1),diff(filter1),30,AmbTempAvg(filter1),'filled');grid;colorbar;
hold on
plot(a3,b3,'r-o','linewidth',2);
ciplot(b3u,b3l,a3,'b');
% ylim([-0.2 0.5]);
ylabel('OH\_wave - OH\_chem (pptv)');
xlabel('OH reactivity')
title('abs. diff between two ways vs. OH reactivity');
fprintf('correlation is %f/n',corrcoef(a3,b3))
% figure(4)
% scatter(OHR_best(filter2),diff(filter2),30,AmbTempAvg(filter2),'filled');grid;colorbar

