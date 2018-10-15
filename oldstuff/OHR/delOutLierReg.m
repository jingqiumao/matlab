%Decay without outliers.
%this method uses cook's distance to detect outliers. Whenever cook's
%distance is bigger than 1, this point is taken as an outlier.
%regstats in the statistics toolbox is used
%this decay doesnt need to worry about the NaNs. cool!
%this function was called 'getdecay.m', but I change my mind.
function [decay,intercept,r2]=delOutLierReg(x,y)
    x1=x;y1=y;
    if length(x(~isnan(x)))>4 & length(y(~isnan(y)))>4
   decaystats=regstats(y,x);
   temp=decaystats.cookd;
%get rid of outliers.   
   a=find(temp>1);
   x1(a)=NaN;y1(a)=NaN;
%         if length(x1(~isnan(x1)))>4&length(y1(~isnan(y1)))>4
   decaystats2=regstats(y1,x1);
   temp1=decaystats2.beta;
   r2=decaystats2.rsquare;
   intercept=temp1(1);
   decay=temp1(2);
%         else decay=NaN;intercept=NaN;
%         end;
    else decay=NaN;intercept=NaN;r2=NaN;
    end;
return;
  