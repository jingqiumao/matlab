function [a_m,b_m,c_std,d_mean]=a_median(a,b,delta_a)
% where a_m is the vector of indepedent variables, spaced at intervals of
% delta_a at the midepoint (n + delta_a/2);
% b_m is the median value for data in a bin of width delta_a, centered on
% the middle of the bin;
% a is the independent variable;
% b is the dependent variable.
% here I check the size of two input arrays to make sure they have the same
% dimension. 
if ~isequal(size(a), size(b)) b=b';, end
if ~isequal(size(a), size(b)) return, end    
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
%

 