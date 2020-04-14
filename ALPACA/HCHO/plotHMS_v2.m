set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);
%%%%%%%%%%%%%
%read HMS
%%%%%%%%%%%%%
tempdir = '/Volumes/GoogleDrive/My Drive/ALPACA/COFFEE/DEC_2020/';
filename='Dec_Jan1_Feb24.xlsx';
opts = detectImportOptions(strcat(tempdir,filename),'NumHeaderLines',1);
dataDEC=readtable(strcat(tempdir,filename),opts);
for i=1:length(dataDEC.DATE)
    DEC_time=dataDEC.DATE(i);
    doy_DEC(i)=datenum(DEC_time)-datenum(2020,1,1)+1;
end
doy_DEC=doy_DEC';

%%%%%%%%%%%%%
%read PILS
%%%%%%%%%%%%%
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
%make 1 hr data using DEC timeline
%%%%%%%%%%%%%
load mergeHCHO_1min.mat
delta_a = 1/24;
doy_mrg_1min=T1min;
HCHO_pptv_1min(HCHO_pptv_1min<-99) = NaN;
for i=1:length(doy_DEC)
%     DEC may have a weird timestamp, from
      k=find((doy_mrg_1min<=doy_DEC(i)+delta_a/2) & (doy_mrg_1min>=doy_DEC(i)-delta_a/2));
%       k=find((doy_mrg_1min<=doy_DEC(i)+delta_a) & (doy_mrg_1min>=doy_DEC(i)));
      if ~isempty(k)
            kk=find(~(isnan(HCHO_pptv_1min(k))));
            if isempty(kk)
               HCHO_pptv_1hr(i)=NaN;
            else
               HCHO_pptv_1hr(i)=mean(HCHO_pptv_1min(k(kk)));
            end
        else
            HCHO_pptv_1hr(i)=NaN;
      end
end

%%%%%%%%%%%%%
%now plotting PM2.5 and HMS
%%%%%%%%%%%%%
yyaxis left
plot (doy_mrg_1min, HCHO_pptv_1min./1000,'k.-')
% plot (doy_DEC, HCHO_pptv_1hr./1000,'b.-');
xlim([18 27])
ylim([0 20])
hold on;
plot(doy_PILS, data.HMS,'b.-')
plot(doy_PILS, data.Sulfate,'r.-')
plot(doy_DEC,dataDEC.SO2_ppb_./2,'m.--')
plot(doy_DEC,dataDEC.PM25__g_m3_,'c.--')
xlabel('Day of Year')
ylabel('HCHO (ppb) and HMS (ug/m3)');
legend('HCHO (ppb)','HMS (ug/m3)','Sulfate (ug/m3)', 'SO2 (ppb)', 'PM2.5(ug/m3)');
% legend('HCHO (ppb)','HMS (ug/m3)');