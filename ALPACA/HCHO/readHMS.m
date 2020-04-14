set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/PILS/';
filename='Proposal PILS data scaled to 3 filters.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
data=readtable(strcat(tempdir,filename),opts);
for i=1:length(data.DateAndTimePILS)
    PILS_time=data.DateAndTimePILS(i);
    doy_PILS(i)=datenum(PILS_time)-datenum(2020,1,1)+1;
end
doy_PILS=doy_PILS';

%%%%%%%%%%%%%
%now plotting PM2.5 and HMS
%%%%%%%%%%%%%

load mergeHCHO_1min.mat
doy_mrg_1min=T1min;
HCHO_pptv_1min(HCHO_pptv_1min<-99) = NaN;
plot (doy_mrg_1min, HCHO_pptv_1min./1000,'b.-');
xlim([15 30])
hold on;
plot(doy_PILS, data.HMS,'r.-')
xlabel('Day of Year')
ylabel('HCHO (ppb) and HMS (ug/m3)');
legend('HCHO (ppb)','HMS (ug/m3)');
