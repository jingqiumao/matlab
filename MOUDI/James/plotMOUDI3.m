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
wsoc=[0.028451493;
0.037002488;
0.045087065;
0.070584577;
0.071983831;
0.113028607;
NaN;
0.22699005;
0.245646766;
0.183457711];wsoc=flip(wsoc);
y=wsoc./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('WSOC')

subplot (4,3,11)
abs365=[0.13;
0.1;
0.09;
0.11;
0.14;
0.17;
NaN;
0.27;
0.62;
0.63];abs365=flip(abs365);
y=abs365./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('abs@365nm')

subplot (4,3,3)
sodium=[0.079844429;
0.064593788;
0.075899968;
0.081294233;
0.05611845;
0.057745899;
NaN
0.008784923;
0.05281389;
0.062525095];sodium=flip(sodium);
y=sodium./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Na+')

subplot (4,3,4)
ammonium=[-0.003979131;
-0.004122076;
-0.003536398;
-0.003194919;
-0.003939424;
0.001065639;
NaN;
-0.003284259;
0.018201179;
0.012896329];ammonium=flip(ammonium);
y=ammonium./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NH4+')

subplot (4,3,5)
potassium=[0.007616894;
0.009699473;
0.009502522;
0.011796642;
0.010374215;
0.009002849;
NaN;
NaN;
0.012252548;
0.010359626];
potassium=flip(potassium);
y=potassium./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('K+')

subplot (4,3,6)
calcium=[0.000389881;
0.005030222;
0.004159364;
0.010003227;
0.002443073;
-0.001900625;
NaN;
NaN;
-0.003566063;
-0.00493062];
calcium=flip(calcium);
y=calcium./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Ca2+')

subplot (4,3,7)
formate=[0.002094073;
0.002285357;
0.00204393;
0.003566775;
0.003000351;
0.002749639;
NaN;
0.005448045;
0.006187182;
0.005383046];
formate=flip(formate);
y=formate./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('HCOO- (formate)')

subplot (4,3,8)
chloride=[0.002554717;
0.003478088;
0.008361857;
0.004337256;
0.001434408;
0.000441062;
NaN;
0.000432405;
-7.97771E-05;
0.00296302];
chloride=flip(chloride);
y=chloride./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('Cl-')

subplot (4,3,9)
nitrate=[0.004092604;
0.002448334;
0.002994599;
0.00535216;
0.001321579;
0.000574059;
NaN;
-0.000152924;
0.001743256;
0.00182677];
nitrate=flip(nitrate);
y=nitrate./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('NO3-')

subplot (4,3,1)
sulfate=[0.001998776;
-0.001118386;
0.004483145;
0.011753922;
0.005214415;
0.011578417;
NaN;
0.024487776;
0.018775092;
0.010928074];
sulfate=flip(sulfate);
y=sulfate./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('SO4^2-')

subplot (4,3,2)
oxalate=[0.001973843;
0.001698588;
0.002195945;
0.003553238;
0.002877439;
0.003724086;
NaN;
0.007093589;
0.005312973;
0.003610188];
oxalate=flip(oxalate);
y=oxalate./size_range.*size_mean;

bar(log10(size_mean),y,'hist');
set(gca,'xtick',log10(size_mean))
set(gca,'XTickLabel', sprintfc('%3.1f',size_mean))
xlabel('Dp (um)')
ylabel('dC/dlnDp')
title('C2O4^2-')

[ax,h3]=suplabel('Sample 3: 7/26 to 8/6 (No Fire Event), C=ug/m3' ,'t'); 
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
