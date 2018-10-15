%function bestDecay(x,y)
function [a,b,c,d,e,f,g,h]= bestDecay(x,y)
%a is the decay rate from the maximum Rsquare.
%b is the intercept from the maximum Rsquare
%c is the maximum Rsquare from different samplings,
%d is the relative location of start point from the best decay
%e is the last point.
%f is the average decay rate
%g is the standard deviation
%h is number of available combinations
N=length(x);
% if sampling points are less than 5, it is not reasonable to calculate the decay.
if N<4
    exit;
end
k=1;
clear i;

% Use two loops to find the best decay rates and use sub1(k)&sub2(k) to record the location of sampling points.
for i=1:(N-4)
    for j=1:(N-4-i)
        [Intercept(k),Coefficient(k),Rsquare(k)]=linfitMAOR(x(i:4+i+j),y(i:4+i+j));
        sub1(k)=i;
        sub2(k)=4+i+j;
        k=k+1;
    end
end
Rsquare(Rsquare<0.6)=NaN;
Intercept(Rsquare<0.6)=NaN;
Coefficient(Rsquare<0.6)=NaN;

%get the maximum value of Rsquare, and tmp returns the indices of the maximum value
[c,tmp]=max(Rsquare);
a=Coefficient(tmp);
b=Intercept(tmp);
d=sub1(tmp);
e=sub2(tmp);
f=nanmean(Coefficient);
g=nanstd(Coefficient);
h=length(Rsquare(~isnan(Rsquare)));
% if ~isnan(e) & ~isnan(b)
% fprintf('\n Maximum correlation is %1.4f \n',a);
% fprintf('where decay rate is %3.3f ',b);
% fprintf(' from point %1d ',c);
% fprintf('to point %1d \n',d);
% fprintf('the average decay rate is %3.3f',e);
% fprintf(' with standard deviation %3.3f',f);
% else
% fprintf('\n No qualifying decay,brother!');
% end
return;

function [A,B,Rsquare]= linfitMAOR(x,y)

% Calculate a linear least squares fit of the form y=A+Bx 
% The function also return standard error in y, and the coefficients A and B
% [A,B,Rsquare]= fit(x,y)

sumx=0;   
sumy=0;
sxs=0;
sys=0;
sumxy=0;
linear=0;


N=length(x);
for i=1:N
 sumx=sumx+x(i);
 sumy=sumy+y(i);
 sxs=sxs+x(i)^2;
 sys=sys+y(i)^2;
 sumxy=sumxy+x(i)*y(i);
end

del=N*sxs-(sumx)^2;
dela=N*sys-(sumy)^2;

A=(sxs*sumy-sumx*sumxy)/del;

B=(N*sumxy-sumx*sumy)/del;

for i=1:N
 linear=linear+[y(i)-A-B*x(i)]^2;
end

Correlation=(N*sumxy-sumx*sumy)/sqrt(del)/sqrt(dela);

Rsquare=Correlation^2;
return;
