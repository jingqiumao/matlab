clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

load mergedata.mat

dayTime=T1hr-floor(T1hr);
[time_mean,Temp_mean]=a_mean(dayTime, Temperature_new, 1/24);
[time_mean,CO_mean]=a_mean(dayTime, CO_new, 1/24);
[time_mean,SO2_mean]=a_mean(dayTime, SO2_new, 1/24);
[time_mean,NOy_mean]=a_mean(dayTime, NOy_new, 1/24);
[time_mean,NOx_mean]=a_mean(dayTime, NOx_new, 1/24);
[time_mean,PM25_mean]=a_mean(dayTime, PM25_new, 1/24);
% plot mean
figure
subplot(2,3,1)
plot(time_mean, Temp_mean,'ro-','markersize',8);

subplot(2,3,2)
plot(time_mean, CO_mean,'b+-','markersize',8);

subplot(2,3,3)
plot(time_mean, SO2_mean,'gs-','markersize',8);

subplot(2,3,4)
plot(time_mean, NOy_mean,'k*-','markersize',8);

subplot(2,3,5)
plot(time_mean, NOx_mean,'gs-','markersize',8);

subplot(2,3,6)
plot(time_mean, PM25_mean,'k*-','markersize',8);


[time_mean,Temp_median]=a_median(dayTime, Temperature_new, 1/24);
[time_mean,CO_median]=a_median(dayTime, CO_new, 1/24);
[time_mean,SO2_median]=a_median(dayTime, SO2_new, 1/24);
[time_mean,NOy_median]=a_median(dayTime, NOy_new, 1/24);
[time_mean,NOx_median]=a_median(dayTime, NOx_new, 1/24);
[time_mean,PM25_median]=a_median(dayTime, PM25_new, 1/24);

% plot median
figure
subplot(2,3,1)
plot(time_mean, Temp_median,'ro-','markersize',8);

subplot(2,3,2)
plot(time_mean, CO_median,'b+-','markersize',8);

subplot(2,3,3)
plot(time_mean, SO2_median,'gs-','markersize',8);

subplot(2,3,4)
plot(time_mean, NOy_median,'k*-','markersize',8);

subplot(2,3,5)
plot(time_mean, NOx_median,'gs-','markersize',8);

subplot(2,3,6)
plot(time_mean, PM25_median,'k*-','markersize',8);

function [a_m,b_m]=a_mean(a,b,delta_a)
% where a_m is the vector of indepedent variables, spaced at intervals of
% delta_a at the midepoint (n + delta_a/2);
% b_m is the median value for data in a bin of width delta_a, centered on
% the middle of the bin;
% a is the independent variable;
% b is the dependent variable.
%
a_s = length(a);
a_min = min(a);
a_max = max(a);
n = ceil((a_max-a_min)/delta_a);
a_m_0 = floor(min(a));
%
%   get rid of NaN's
%
f = ~isnan(a) & ~isnan(b);
af = a(f);
bf = b(f);
%
%   find the median for n bins
%
for i = 1:n
    a_m(i) = a_m_0 + (i-0.5)*delta_a;
end
%
b_m(1) = mean(bf(a_m_0<af & (a_m_0+delta_a)>af));
%
for i = 2:n
    b_m(i) = mean(bf((a_m_0+(i-1)*delta_a)<af & (a_m_0+(i)*delta_a)>af));
end
%

end

function [a_m,b_m,c_std,d_mean]=a_median(a,b,delta_a)
% where a_m is the vector of indepedent variables, spaced at intervals of
% delta_a at the midepoint (n + delta_a/2);
% b_m is the median value for data in a bin of width delta_a, centered on
% the middle of the bin;
% a is the independent variable;
% b is the dependent variable.
%
a_s = length(a);
a_min = min(a);
a_max = max(a);
n = ceil((a_max-a_min)/delta_a);
a_m_0 = floor(min(a));
%
%   get rid of NaN's
%
f = ~isnan(a) & ~isnan(b);
af = a(f);
bf = b(f);
%
%   find the median for n bins
%
for i = 1:n
    a_m(i) = a_m_0 + (i-0.5)*delta_a;
end
%
if sum(~isnan(median(bf(a_m_0<af & (a_m_0+delta_a)>af))))==0
    b_m(1)=NaN;
    c_std(1)=NaN;
    d_mean(1)=NaN;
else
    b_m(1) = median(bf(a_m_0<af & (a_m_0+delta_a)>af));
    c_std(1)=std(bf(a_m_0<af & (a_m_0+delta_a)>af));
    d_mean(1)=mean(bf(a_m_0<af & (a_m_0+delta_a)>af));
end
%
for i = 2:n
    if sum(~isnan(median(bf((a_m_0+(i-1)*delta_a)<af & (a_m_0+(i)*delta_a)>af))))==0
        b_m(i) = NaN;
        c_std(i)= NaN;
        d_mean(1)=NaN;
    else
        b_m(i) = median(bf((a_m_0+(i-1)*delta_a)<af & (a_m_0+(i)*delta_a)>af));
        c_std(i)=std(bf((a_m_0+(i-1)*delta_a)<af & (a_m_0+(i)*delta_a)>af));
        d_mean(i)=mean(bf((a_m_0+(i-1)*delta_a)<af & (a_m_0+(i)*delta_a)>af));
    end
end
end