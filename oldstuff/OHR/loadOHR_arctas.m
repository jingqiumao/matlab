%dlmread is used to read data. The advantage of this function is dlmread
%fills empty delimited fields with zero. 
dateInput='80630';
cpuStart=cputime;
file=[dateInput,'ba.txt'];
copyfile(file,'temp.txt');
% generate two temporary files. At first, modify the comment lines with the addition of '%'.
% Temp is a copy of original file. Temp1 is to cut off the comment lines and then ready for loading.
f = fopen('temp.txt', 'r');
if f < 0, return; end
g = fopen('temp1.txt', 'w');
if g < 0, fclose(f); return, end

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
clear s f g;

data=dlmread('temp1.txt');
delete('temp.txt');
delete('temp1.txt');
%only for those header number> column number case
if size(data,2)<length(header)
    disp('double check header!');
    header=header(1:size(data,2));
end
%change the variable name if two variable have identical names
for varNum=1:length(header)
    checkdupl=strmatch(header(varNum),header);
    if length(checkdupl)>1
        header(checkdupl(2))=strcat(header(checkdupl(2)),'1');
    end
end;
clear checkdupl;

%assign the data to each variable.
for varNum=1:length(header)
    eval([char(cellstr(header(varNum))),' = data(:,varNum);']);
end;

% global all;
timeUsed=cputime-cpuStart;
fprintf('it takes %3.1f seconds',timeUsed);
clear data file;