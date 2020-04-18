%data is available from 10/01/2018 to 03/31/2019
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

load('NCOREdata.mat')
delta_a=1;
doy_indx=366:1:429;
% doy_indx=366:1:397;
for i=1:length(doy_indx)
      k=find((SO2_time<=doy_indx(i)+delta_a) & (SO2_time>=doy_indx(i)));
      if ~isempty(k)
            kk=find(~(isnan(SO2(k))));%remove NaN
            if isempty(kk)
               SO2_dailyavg(i)=NaN;
            else
               SO2_dailyavg(i)=mean(SO2(k(kk)));
            end
        else
            SO2_dailyavg(i)=NaN;
      end
      
      k=find((pm25_time<=doy_indx(i)+delta_a) & (pm25_time>=doy_indx(i)));
      if ~isempty(k)
            kk=find(~(isnan(pm25(k))));%remove NaN
            if isempty(kk)
               pm25_dailyavg(i)=NaN;
            else
               pm25_dailyavg(i)=mean(pm25(k(kk)));
            end
        else
            pm25_dailyavg(i)=NaN;
      end
      
      k=find((t3m_time<=doy_indx(i)+delta_a) & (t3m_time>=doy_indx(i)));
      if ~isempty(k)
            kk=find(~(isnan(t3m(k))));
            if isempty(kk)
               t3m_dailyavg(i)=NaN;
            else
               t3m_dailyavg(i)=mean(t3m(k(kk)));
            end
        else
            t3m_dailyavg(i)=NaN;
      end
end

figure
scatter(pm25_dailyavg,SO2_dailyavg, 30,t3m_dailyavg,'filled'); grid;hcb=colorbar;title('24-hr avg SO2 vs. PM2.5 for 2019 Jan-Feb');ylabel('SO2(ppb)');xlabel('PM2.5(ug/m3)');
title(hcb,'Temp (C)');