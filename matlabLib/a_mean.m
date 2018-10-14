function [a_m,b_m]=a_median(a,b,delta_a)
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

 