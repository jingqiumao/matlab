function [a_m,b_m,c_std,d_mean]=a_median_bin(a,b,binarr)
%I am thinking binarr=[294,296,298,300,302,304,306]
% where a_m is the vector of indepedent variables, spaced at intervals of
% delta_a at the midepoint (n + delta_a/2);
% b_m is the median value for data in a bin of width delta_a, centered on
% the middle of the bin;
% a is the independent variable;
% b is the dependent variable.
%
a_m = nan(length(binarr)-1,1);
b_m = nan(length(binarr)-1,1);

% a_m_0 = floor(min(a));
%
%   get rid of NaN's
%
f = ~isnan(a) & ~isnan(b);
af = a(f);
bf = b(f);
%
%   find the median for n bins
%
for i = 1:length(binarr)-1
    a_m(i) = (binarr(i)+binarr(i+1))./2;
end
%

for i = 1:length(binarr)-1
    if sum(~isnan(median(bf(af>=binarr(i) & af<=binarr(i+1)))))==0
        b_m(i) = NaN;
        c_std(i)= NaN;
        d_mean(1)=NaN;
    else
        b_m(i) = median(bf(af>=binarr(i) & af<=binarr(i+1)));
        c_std(i)=std(bf(af>=binarr(i) & af<=binarr(i+1)));
        d_mean(i)=mean(bf(af>=binarr(i) & af<=binarr(i+1)));
    end
end
%

 