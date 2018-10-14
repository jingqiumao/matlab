function [zz,za,zt]=alt_pro(z,a,t,v_min)
% The function separates ascents (a_d > 0) or decents (a_d < 0) for 
% a given flight series.  The variables are:
% z_z is the vector of altitudes space at 10 m, 
% z_a is the vector of that variable at different altitudes
% z_t is the vector of starting times for the ascent;
% z_n is the number of ascents or descents
% z is the initial altitude vectordt
% a is the inital a_m is the vector of indepedent variables
% t is the time vector
% a_d indicates either ascent, if positive, or descent, if negative
% v_min is the minimum vertical velocity that will be considered to
%       be an ascent or descent (in feet per minute)
%
v_m = 3.05e-4*(86400/60).*v_min ;   % v_min is in feet per minute
dt = diff(t);
dz = diff(z);
v = dz./dt;
v(length(v)+1)=NaN;
%
%   Limit the data to ascents
%
z_z = z(abs(v) > v_m);
z_a = a(abs(v) > v_m);
tt  = t(abs(v) > v_m);
%
%   Find differentials in order to determine the time step, tm
%
dtt = diff(tt);     
dtt(length(tt)) = 0.00067;
tm = nanmedian(dtt(dtt < nanmedian(dtt)));
%
%   Find the starting time of each ascent  
%
%   Create a vector z_s that has the same starting times for 
%   all values of each ascent
%
k = 1;
if tt(2)-tt(1) < 0.001
    z_t(1) = tt(1);
    zth = tt(1);
    z_s(k) = tt(1);
end
%
%
h = 0;
for i = 2:length(tt)
    if tt(i) - tt(i-1) < tm + 0.0002
        z_t(i) = zth ;
        h = h + 1;
    else 
        h = 0;
        zth = tt(i);
        z_t(i) = tt(i);
        k = k + 1;
        z_s(k) = tt(i);
        
    end
    z_n(k) = h ;       % creat a vector = # points in ascent
end
%
z_n = z_n';
z_t = z_t' ;
z_s = z_s' ;
%
% Regroup the ascents into three matrices:
%       altitude
%       start time
%       variable
%
%   First create a vector of the initial times of the ascents
%   This vector will be used in an if statement to create the 
%   matrix
%
zn_max = max(z_n); 
%
k = 1;      % k will be the index for the ascent
j = 1;      % j will be the index for the number of points
                % in the ascent
%
zz(j,k) = z_z(1) ;
zt(j,k) = z_t(1) ;
za(j,k) = z_a(1) ;
%
j = 2 ;
for i = 2:length(tt)
    if z_t(i) == z_t(i-1)
        zt(j,k) = z_t(i);
        zz(j,k) = z_z(i);
        za(j,k) = z_a(i);
        j = j + 1 ;
    else
        for m = j:zn_max
            zt(m,k) = NaN ;
            zz(m,k) = NaN ;
            za(m,k) = NaN ;
        end
        k = k + 1;
        j = 1 ;
        zz(j,k) = z_z(i);
        zt(j,k) = z_t(i);
        za(j,k) = z_a(i);
    end
end
%

        
    
    
    