function results=fill_NaN(vector);
%This function is to fill the NaNs in a single vector by linear method.
cpu_t=cputime;
vector_num=find(~isnan(vector));
results=vector;
if ~isnan(vector)
    disp('Filled already');
    return;
end
if isempty(vector_num)
    vector(:)=0;
    results=vector;
    return;
end;
vector_mean=nanmean(vector);

for i=1:length(vector_num)-1
    m=vector_num(i);
    n=vector_num(i+1);
    counts=n-m-1;
    for j=1:counts
        interval=(vector(n)-vector(m))/counts;
        results(m+j)=results(m)+interval*j;
    end
end
% for the beginning and the end.
first_num=vector_num(1)-1;
second_num=vector_num(2);
interval_start=(vector(second_num)-vector(first_num+1))/(first_num-1);

for start=1:first_num
%     results(start)=vector_mean+interval_start*(first_num-start);
    results(start)=vector(first_num+1)-interval_start*(first_num-start);
end

last_lens=length(vector)-n;
interval_end=interval/last_lens;
for last=1:last_lens
    results(n+last)=vector(n)+interval_end*last;
end
e=cputime-cpu_t;
% fprintf('it takes %3.1f seconds',e);