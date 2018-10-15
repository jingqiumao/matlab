function [robDecay,robIntercept,robR2,exitflag]=robreg(x,y)
% Do robust (sum of absolute value of error minimization) regression
%get rid of NaNs from both x and y.
%please make sure x is column vector instead of row vector.
x = x(~isnan(x));
y = y(~isnan(x));
x = x(~isnan(y));
y = y(~isnan(y));
if length(x)<=1&length(y)<=1
    robDecay=NaN;
    robIntercept=NaN;
    robR2=NaN;
    exitflag=NaN;
    return;
end
%this step is for set up a intercept.
x1d=x;%x1d is used for later SSE SSTO calculation.
x=[(x.*0+1),x];
startb0 = 0;
startb1 = 0;
[brob,fval,exitflag] = fminsearch(@fitline, [startb0, startb1], optimset('TolX',1e-6), x, y);
robDecay=brob(2);
robIntercept=brob(1);

if ~isnan(robDecay)%if there are lots of NaN, robDecay will be NaN
    SSE=0;SSTO=0;
    for i=1:length(x1d)
        SSE=SSE+(y(i)-x1d(i)*robDecay-robIntercept)^2;%Error sum of squares,SSE
        SSTO=SSTO+(y(i)-mean(y))^2;%Total Sum of Squares, denoted SSTo
    end
    robR2=1-SSE/SSTO;%definition of R2
else
    robR2=NaN;
end
return

%this function is to get the residual instead of distance(least square).
function goof = fitline(b, x, y)
goof = sum(abs(y - (x * b')));
return