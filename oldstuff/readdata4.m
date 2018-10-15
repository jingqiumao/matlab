cpu_t=cputime;
copyfile('nav_dc8_20040708_RA.ict','temp');
n=66;% the line number before header
f = fopen('temp', 'r');
if f < 0, return; end
g = fopen('temp1', 'w');
if g < 0, fclose(f); return, end

for m=1:n
	s = fgets(f);
	if isequal(s, -1), break; end
	t = upper(s);
% 	if any(t >= 'A' & t ~= 'E' & t <= 'Z' & t ~= '*')
		s = ['% ' s];
% 	end
% 	fwrite(g, s);
end
%header=fgets(f);
header=fscanf(f,'%s');
while (1)
	s = fgets(f);
	if isequal(s, -1), break; end
    fwrite(g, s);
end

fclose(f);
fclose(g);
data=load('temp1');
delete('temp');
delete('temp1');
time=data(:,1);
e=cputime-cpu_t;
disp('it takes' );disp(e);disp('seconds')