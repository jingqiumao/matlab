figure
clf reset
i=1;
set(gcf,'unit','normalized','position',[0.01,0.03,0.95,0.9]);
set(gcf,'defaultuicontrolunits','normalized');
set(gcf,'defaultuicontrolfontsize',11);
set(gcf,'defaultuicontrolhorizontal','left');
set(gcf,'menubar','none');

str='OHR';
set(gcf,'name',str,'numbertitle','off');

tempdir = uigetdir(pwd, 'Select a folder');
cd(tempdir);
filelist_a = dir(fullfile(tempdir, 'absorbance*.txt'));
subplot('position',[0.04,0.52,0.45,0.45])
absorb=readtable(filelist_a(1).name);plot(absorb.Var1, absorb.Var2);title(filelist_a(1).name);

filelist_b = dir(fullfile(tempdir, 'intensity*.txt'));
subplot('position',[0.04,0.04,0.45,0.45])
intensity=readtable(filelist_b(1).name);plot(intensity.Var1, intensity.Var2);title(filelist_b(1).name);

filelist_c = dir(fullfile(tempdir, 'reference.txt'));
subplot('position',[0.53,0.2,0.2,0.2])
intensity=readtable(filelist_c(1).name);plot(intensity.Var1, intensity.Var2);title(filelist_c(1).name);
%z1a:1 is first line, a is the first cell.
zleft=0.52;
zbottom=0.92;
zwidth=0.12;
zheight=0.08;
zhordist=0.08;
zvertdist=0.03;

i=2;
zpush1=uicontrol(gcf,'Style','push',...
    'position',[0.75,0.05,0.08,0.08],'string','Next');
% while i>0&i<=length(oh_Decay)
set(zpush1,'callback',['i=i+1;'...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'absorb=readtable(filelist_a(i).name);plot(absorb.Var1, absorb.Var2);title(filelist_a(i).name);'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'intensity=readtable(filelist_b(i).name);plot(intensity.Var1, intensity.Var2);title(filelist_b(i).name);'
     ]);
zpush2=uicontrol(gcf,'Style','push',...
    'position',[0.65,0.05,0.08,0.08],'string','Prev');
set(zpush2,'callback',['i=i-1;',...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'absorb=readtable(filelist_a(i).name);plot(absorb.Var1, absorb.Var2);title(filelist_a(i).name);'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'intensity=readtable(filelist_b(i).name);plot(intensity.Var1, intensity.Var2);title(filelist_b(i).name);'
     ]);
zpush3=uicontrol(gcf,'Style','push',...
    'position',[0.5,0.05,0.08,0.08],'string','Prev hour');
set(zpush3,'callback',['i=i-15;',...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'absorb=readtable(filelist_a(i).name);plot(absorb.Var1, absorb.Var2);title(filelist_a(i).name);'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'intensity=readtable(filelist_b(i).name);plot(intensity.Var1, intensity.Var2);title(filelist_b(i).name);'
     ]);
zpush4=uicontrol(gcf,'Style','push',...
    'position',[0.9,0.05,0.08,0.08],'string','Next hour');
set(zpush4,'callback',['i=i+15;',...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'absorb=readtable(filelist_a(i).name);plot(absorb.Var1, absorb.Var2);title(filelist_a(i).name);'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'intensity=readtable(filelist_b(i).name);plot(intensity.Var1, intensity.Var2);title(filelist_b(i).name);'
      ]);