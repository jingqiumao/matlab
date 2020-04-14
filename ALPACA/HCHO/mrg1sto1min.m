load mergeHCHO_1s.mat
doy_mrg_1s=doy_mrg;
HCHO_pptv_1s=HCHO_pptv_mrg;
HCHO_pptv_1s (HCHO_pptv_1s <-99)= NaN;
n=floor((max(doy_mrg_1s)-min(doy_mrg_1s)).*24.*60);

for i=1:n
    %from Oct 1 of 2017 to Mar 31st of 2018
    T1min(i)=min(doy_mrg_1s)+(i-1)*1/24*1/60;
end

delta_a = 1/24/60;
for i=1:n
      k=find((doy_mrg_1s<=T1min(i)+delta_a/2) & (doy_mrg_1s>=T1min(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(HCHO_pptv_1s(k))));
            if isempty(kk)
               HCHO_pptv_1min(i)=NaN;
            else
               HCHO_pptv_1min(i)=mean(HCHO_pptv_1s(k(kk)));
            end
        else
            HCHO_pptv_1min(i)=NaN;
      end
end    