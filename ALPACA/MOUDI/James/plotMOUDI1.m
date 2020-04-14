aero_size=[18;10;5.6;3.2;1.8;1.00;0.56;0.32;0.18;0.1;0.056];
aero_size=flip(aero_size);

size_mean=[13.34916;
7.83454;
4.38406;
2.36220; 
1.34164; 
0.74833; 
0.42332; 
0.24000; 
0.13416; 
0.07483 ]; size_mean=flip(size_mean);

size_range=[8.10000;
3.70000; 
3.10000; 
1.30000; 
0.80000; 
0.44000; 
0.24000; 
0.14000; 
0.08000; 
0.04400 ]; size_range=flip(size_range);
% h=bar(size_mean,y,'histc')
% set(gca,'xlim',[0.05 30]);
% xticks=[0.05 0.1 0.2 0.5 1 2 5 10];
% set(gca,'xscale','log','xminortick','on')   
% set(gca,'xtick',aero_size)

% set(gca,'Xtick',-3:1:1); %// adjust manually; values in log scale
% set(gca,'Xticklabel',10.^get(gca,'Xtick')); %// use labels with linear values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot (4,3,10)
wsoc=[0.07647585;
0.09391771;
0.113148479;
0.064847943;
0.424865832;
0.36940966;
0.390876565;
0.209302326;
0.203488372;
0.224955277;
];wsoc=flip(wsoc);
y=wsoc./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('WSOC')

subplot (4,3,11)
abs365=[0.06;
0.11;
0.07;
0.1;
0.08;
0.13;
0.1;
0.08;
0.1;
0.15;
];abs365=flip(abs365);
y=abs365./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('abs@365nm')

subplot (4,3,3)
sodium=[2845.593631;
1514.536306;
2847.478981;
2192.943949;
2436.383439;
2395.122293;
2292.115924;
2625.428025;
2497.04586;
2480.243312;
];sodium=flip(sodium)*0.015/335.4;
y=sodium.*size_mean./size_range;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Na+')

subplot (4,3,4)
ammonium=[NaN;
    NaN;
    NaN;
    NaN;
    NaN;
843.9910141;
693.6829268;
376.1604621;
219.6136072;
114.5558408;
];ammonium=flip(ammonium)*0.015/335.4;
y=ammonium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NH4+')

subplot (4,3,5)
potassium=[258.6839623;
NaN;
347.5754717;
NaN;
192.0801887;
NaN;
221.8679245;
219.1556604;
164.5566038;
125.5707547;
];
potassium=flip(potassium)*0.015/335.4;
y=potassium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('K+')

subplot (4,3,6)
calcium=[68.74624829;
111.20191;
189.414734;
69.72851296;
119.9604366;
92.41609823;
73.98499318;
23.50750341;
4.312414734;
18.84174625;
];
calcium=flip(calcium)*0.015/335.4;
y=calcium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Ca2+')

subplot (4,3,7)
formate=[75.72162485;
34.52688172;
51.18160096;
52.74671446;
86.84468339;
125.5424134;
128.0991637;
117.7526882;
122.4360812;
125.1600956;
];
formate=flip(formate)*0.015/335.4;
y=formate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('HCOO- (formate)')

subplot (4,3,8)
chloride=[130.5725581;
85.75860465;
159.2190698;
66.92604651;
78.35395349;
90.6655814;
57.57255814;
69.71674419;
108.8051163;
105.34;
];
chloride=flip(chloride)*0.015/335.4;
y=chloride.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Cl-')

subplot (4,3,9)
nitrate=[70.41798942;
67.30511464;
191.5291005;
65.11816578;
12.66666667;
8.760141093;
7.631393298;
2.64021164;
10.55026455;
31.48500882;
];
nitrate=flip(nitrate)*0.015/335.4;
y=nitrate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NO3-')

subplot (4,3,1)
sulfate=[157.0307982;
174.5983658;
428.30044;
268.690132;
1043.661848;
1689.469516;
1251.411691;
916.6536769;
700.2991829;
620.2803268;
];
sulfate=flip(sulfate)*0.015/335.4;
y=sulfate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('SO4^2-')

subplot (4,3,2)
oxalate=[28.88278388;
69.77411477;
71.16605617;
65.85470085;
69.90842491;
83.57142857;
95.37851038;
71.12942613;
62.42368742;
42.91208791;
];
oxalate=flip(oxalate)*0.015/335.4;
y=oxalate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('C2O4^2-')

[ax,h3]=suplabel('Sample 1: 6/28 to 7/6 (No Fire Event), C=ug/m3' ,'t'); 
set(h3,'FontSize',24); 

function [ax,h]=suplabel(text,whichLabel,supAxes)
% PLaces text as a title, xlabel, or ylabel on a group of subplots.
% Returns a handle to the label and a handle to the axis.
%  [ax,h]=suplabel(text,whichLabel,supAxes)
% returns handles to both the axis and the label.
%  ax=suplabel(text,whichLabel,supAxes)
% returns a handle to the axis only.
%  suplabel(text) with one input argument assumes whichLabel='x'
%
% whichLabel is any of 'x', 'y', 'yy', or 't', specifying whether the 
% text is to be the xlable, ylabel, right side y-label, 
% or title respectively.
%
% supAxes is an optional argument specifying the Position of the 
%  "super" axes surrounding the subplots. 
%  supAxes defaults to [.08 .08 .84 .84]
%  specify supAxes if labels get chopped or overlay subplots
%
% EXAMPLE:
%  subplot(2,2,1);ylabel('ylabel1');title('title1')
%  subplot(2,2,2);ylabel('ylabel2');title('title2')
%  subplot(2,2,3);ylabel('ylabel3');xlabel('xlabel3')
%  subplot(2,2,4);ylabel('ylabel4');xlabel('xlabel4')
%  [ax1,h1]=suplabel('super X label');
%  [ax2,h2]=suplabel('super Y label','y');
%  [ax3,h2]=suplabel('super Y label (right)','yy');
%  [ax4,h3]=suplabel('super Title'  ,'t');
%  set(h3,'FontSize',30)
%
% SEE ALSO: text, title, xlabel, ylabel, zlabel, subplot,
%           suptitle (Matlab Central)
% Author: Ben Barrowes <barrowes@alum.mit.edu>
%modified 3/16/2010 by IJW to make axis behavior re "zoom" on exit same as
%at beginning. Requires adding tag to the invisible axes
%modified 8/8/2018 to allow cells as text for multiline capability
currax=findobj(gcf,'type','axes','-not','tag','suplabel');
if nargin < 3
 supAxes=[.08 .08 .84 .84];
 ah=findall(gcf,'type','axes');
 if ~isempty(ah)
  supAxes=[inf,inf,0,0];
  leftMin=inf;  bottomMin=inf;  leftMax=0;  bottomMax=0;
  axBuf=.04;
  set(ah,'units','normalized')
  ah=findall(gcf,'type','axes');
  for ii=1:length(ah)
   if strcmp(get(ah(ii),'Visible'),'on')
    thisPos=get(ah(ii),'Position');
    leftMin=min(leftMin,thisPos(1));
    bottomMin=min(bottomMin,thisPos(2));
    leftMax=max(leftMax,thisPos(1)+thisPos(3));
    bottomMax=max(bottomMax,thisPos(2)+thisPos(4));
   end
  end
  supAxes=[leftMin-axBuf,bottomMin-axBuf,leftMax-leftMin+axBuf*2,bottomMax-bottomMin+axBuf*2];
 end
end
if nargin < 2, whichLabel = 'x';  end
if nargin < 1, help(mfilename); return; end
if (~isstr(text) & ~iscellstr(text)) | ~isstr(whichLabel)
  error('text and whichLabel must be strings')
end
whichLabel=lower(whichLabel);
ax=axes('Units','Normal','Position',supAxes,'Visible','off','tag','suplabel');
if strcmp('t',whichLabel)
  set(get(ax,'Title'),'Visible','on')
  title(text);
elseif strcmp('x',whichLabel)
  set(get(ax,'XLabel'),'Visible','on')
  xlabel(text);
elseif strcmp('y',whichLabel)
  set(get(ax,'YLabel'),'Visible','on')
  ylabel(text);
elseif strcmp('yy',whichLabel)
  set(get(ax,'YLabel'),'Visible','on')
  ylabel(text);
  set(ax,'YAxisLocation','right')
end
%for k=1:length(currax), axes(currax(k));end % restore all other axes
for k=1:length(currax), set(gcf,'CurrentAxes',currax(k));end % restore all other axes
if (nargout < 2)
  return
end
if strcmp('t',whichLabel)
  h=get(ax,'Title');
  set(h,'VerticalAlignment','middle')
elseif strcmp('x',whichLabel)
  h=get(ax,'XLabel');
elseif strcmp('y',whichLabel) | strcmp('yy',whichLabel)
  h=get(ax,'YLabel');
end
%%%ah=findall(gcf,'type','axes');
%%%'sssssssss',kb   

end
