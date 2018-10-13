function [wavelength,intensity,spectime]=readspectrum(filename)
copyfile(filename,'temp.txt');
% Temp is a copy of original file. Temp1 is to cut off the comment lines and then ready for loading.
% the line number before header. I use matlab editor to open the data file, so I can read the line number directly.
n=17;
% generate two temporary files. At first, modify the comment lines with the addition of '%'.
% Temp is a copy of original file. Temp1 is to cut off the comment lines and then ready for loading.
f = fopen('temp.txt', 'r');
if f < 0, return; end
g = fopen('temp1.txt', 'w');
if g < 0, fclose(g); return, end
% Add '%' for comment lines.
for m=1:n
	s = fgets(f);
	if isequal(s, -1), break; end
    if strncmp(s, 'Date', 4),spectime=s;end
		s = ['% ' s];
end

while (1)
	s = fgets(f);
	if isequal(s, -1), break; end
    if strncmp(s, '>', 1),break;end
    fwrite(g, s);
end

fclose(f);
fclose(g);
clear s f g;

data=load('temp1.txt');
wavelength=data(:,1);intensity=data(:,2);
delete('temp.txt');
delete('temp1.txt');

clear data file;