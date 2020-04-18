figure
scatter(pm25_merge(doy_merge<410),sulfate_merge(doy_merge<410).*0.017./0.672, 30,t_merge(doy_merge<410),'filled'); grid;colorbar;title('Jan');ylabel('sulfate');xlabel('PM2.5');
hold on;
[a,b,c]=linfit(pm25_merge(doy_merge<410),sulfate_merge(doy_merge<410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');
figure
scatter(pm25_merge(doy_merge>410),sulfate_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('sulfate');xlabel('PM2.5');
hold on;
[a,b,c]=linfit(pm25_merge(doy_merge>410),sulfate_merge(doy_merge>410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');
figure
scatter(NOy_merge(doy_merge<410),sulfate_merge(doy_merge<410).*0.017./0.672, 30,t_merge(doy_merge<410),'filled'); grid;colorbar;title('Jan');ylabel('sulfate');xlabel('NOy');
hold on;
[a,b,c]=linfit(NOy_merge(doy_merge<410),sulfate_merge(doy_merge<410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');
figure
scatter(NOy_merge(doy_merge>410),sulfate_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('sulfate');xlabel('NOy');
hold on;
[a,b,c]=linfit(NOy_merge(doy_merge>410),sulfate_merge(doy_merge>410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');

% figure
% scatter(pm25_merge(doy_merge<410),CO_merge(doy_merge<410).*0.017./0.672, 30,t_merge(doy_merge<410),'filled'); grid;colorbar;title('Jan');ylabel('sulfate');xlabel('CO');
% hold on;
% [a,b,c]=linfit(pm25_merge(doy_merge<410),CO_merge(doy_merge<410).*0.017./0.672);
% x_temp=0:1:50;
% y_temp=a+b.*x_temp;
% plot(x_temp,y_temp,'--');
% figure
% scatter(pm25_merge(doy_merge>410),CO_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('sulfate');xlabel('CO');
% hold on;
% [a,b,c]=linfit(pm25_merge(doy_merge>410),CO_merge(doy_merge>410).*0.017./0.672);
% x_temp=0:1:50;
% y_temp=a+b.*x_temp;
% plot(x_temp,y_temp,'--');

figure
scatter(NOy_merge(doy_merge<410),nitrate_merge(doy_merge<410).*0.017./0.672, 30,t_merge(doy_merge<410),'filled'); grid;colorbar;title('Jan');ylabel('nitrate');xlabel('NOy');
hold on;
[a,b,c]=linfit(NOy_merge(doy_merge<410),nitrate_merge(doy_merge<410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');
figure
scatter(NOy_merge(doy_merge>410),nitrate_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('nitrate');xlabel('NOy');
hold on;
[a,b,c]=linfit(NOy_merge(doy_merge>410),nitrate_merge(doy_merge>410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');

figure
scatter(pm25_merge(doy_merge<410),nitrate_merge(doy_merge<410).*0.017./0.672, 30,t_merge(doy_merge<410),'filled'); grid;colorbar;title('Jan');ylabel('nitrate');xlabel('pm25');
hold on;
[a,b,c]=linfit(pm25_merge(doy_merge<410),nitrate_merge(doy_merge<410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');
figure
scatter(pm25_merge(doy_merge>410),nitrate_merge(doy_merge>410).*0.017./0.672, 30,t_merge(doy_merge>410),'filled'); grid;colorbar;title('Feb');ylabel('nitrate');xlabel('pm25');
hold on;
[a,b,c]=linfit(pm25_merge(doy_merge>410),nitrate_merge(doy_merge>410).*0.017./0.672);
x_temp=0:1:50;
y_temp=a+b.*x_temp;
plot(x_temp,y_temp,'--');

function [A,B,Correlation]= linfit(x,y)
x=x(~isnan(x));
y=y(~isnan(x));
y=y(~isnan(y));
x=x(~isnan(y));
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
end