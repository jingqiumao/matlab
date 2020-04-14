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
wsoc=[0.046946565;
0.096946565;
NaN;
NaN;
0.045419847;
0.047137405;
0.077480916;
0.08759542;
0.089122137;
0.071374046;
];wsoc=flip(wsoc);
y=wsoc./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('WSOC')

subplot (4,3,11)
abs365=[0.04;
0.06;
NaN;
NaN;
0.06;
0.09;
0.14;
0.15;
0.13;
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
sodium=[1861.810191;
2345.682803;
NaN;
2276.115924;
2278.001274;
3057.185987;
2198.561783;
2249.096815;
2379.173248;
2124.408917;
];sodium=flip(sodium)*0.015/393;
y=sodium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Na+')

subplot (4,3,4)
ammonium=[-17.69062901;
-21.00256739;
NaN;
-21.77278562;
21.65468549;
487.9833119;
548.2143774;
339.6649551;
346.4300385;
253.9910141;
];ammonium=flip(ammonium)*0.015/393;
y=ammonium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NH4+')

subplot (4,3,5)
potassium=[189.8160377;
257.8820755;
NaN;
265.2169811;
208.6367925;
286.9858491;
259.7688679;
134.9339623;
184.0849057;
247.7877358;
];
potassium=flip(potassium)*0.015/393;
y=potassium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('K+')

subplot (4,3,6)
calcium=[72.27967258;
226.8226467;
NaN;
121.4474761;
92.00682128;
44.02592087;
98.56889495;
7.436562074;
8.064120055;
47.79126876;
];
calcium=flip(calcium)*0.015/393;
y=calcium.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Ca2+')

subplot (4,3,7)
formate=[30.14217443;
69.86738351;
NaN;
54.99283154;
99.64038232;
161.3369176;
165.4587814;
172.2329749;
161.6117085;
137.8841099;
];
formate=flip(formate)*0.015/393;
y=formate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('HCOO- (formate)')

subplot (4,3,8)
chloride=[78.06093023;
136.1027907;
NaN;
109.74;
168.8237209;
125.8330233;
86.93534884;
44.84232558;
68.80046512;
95.20511628;
];
chloride=flip(chloride)*0.015/393;
y=chloride.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Cl-')

subplot (4,3,9)
nitrate=[45.73544974;
65.39153439;
NaN;
159.0776014;
29.9329806;
44.63315697;
28.29276896;
18.68959436;
37.30511464;
175.1181658;
];
nitrate=flip(nitrate)*0.015/393;
y=nitrate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NO3-')

subplot (4,3,1)
sulfate=[126.4148334;
223.8001257;
NaN;
300.0477687;
606.6851037;
1376.27027;
1316.09428;
905.7108737;
816.2137021;
647.8164676;
];
sulfate=flip(sulfate)*0.015/393;
y=sulfate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('SO4^2-')

subplot (4,3,2)
oxalate=[17.002442;
27.66178266;
NaN;
65;
64.85347985;
61.73992674;
62.68009768;
45.29304029;
50.57997558;
35.81807082;
];
oxalate=flip(oxalate)*0.015/393;
y=oxalate.*size_mean./(size_range);

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('C2O4^2-')

[ax,h3]=suplabel('Sample 2: 7/11 to 7/20 (No Fire Event), C=ug/m3' ,'t'); 
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
