close all;
clear all;
%load our data file
cpu_t=cputime;
% load('ATHOS40706.mat');

%load flight data file
copyfile('nav_dc8_20040712_RA.ict','temp.txt');

% the line number before header. I use matlab editor to open the data file, so I can read the line number directly.
n=66;

% generate two temporary files. At first, modify the comment lines with the addition of '%'.
% Temp is a copy of original file. Temp1 is to cut off the comment lines and then ready for loading.
f = fopen('temp.txt', 'r');
if f < 0, return; end
g = fopen('temp1.txt', 'w');
if g < 0, fclose(f); return, end

% Add '%' for comment lines.
for m=1:n
	s = fgets(f);
	if isequal(s, -1), break; end
	t = upper(s);
		s = ['% ' s];
end
s=fgetl(f);
%Read the header into string arrays.
header=strread(s,'%s');

while (1)
	s = fgets(f);
	if isequal(s, -1), break; end
    fwrite(g, s);
end

fclose(f);
fclose(g);
data=load('temp1.txt');
delete('temp.txt');
delete('temp1.txt');
for i=1:length(header)
    eval([char(cellstr(header(i))),' = data(:,i);']);
end;

% % The following part can be separated if you want to save some time.
% J_Second=(Julian-floor(Julian(1)))*86400;
% for i=1:length(J_Second)
% k=find(Time>=J_Second(i)-10 & Time<=J_Second(i)+10);
% temp=LON(k);
% temp1=LAT(k);
% temp2=R_ALT(k);
% %A good function for data averageing including NaN values.
% Long_New(i)=nanmean(temp);
% Lat_New(i)=nanmean(temp1);
% R_ALT_New(i)=nanmean(temp2);
% end
% Long_New=Long_New';
% Lat_New=Lat_New';
% R_ALT_New=R_ALT_New';
% 
% save merge_test.mat Julian XOH XHO2 XNaph Long_New Lat_New R_ALT_New;
e=cputime-cpu_t;
fprintf('it takes %3.1f seconds',e);

