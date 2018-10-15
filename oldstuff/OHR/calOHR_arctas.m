%add propane, isoprene, propene this time
%the difference from the original calOHR is to get Tzero first, also
%calculate the decay for the Tzero first.
%change the flow calibration equation from the latest flow calibration.
%Aug20,06 change the OH_Decay to OH_expDecay, also make OH_Decay to be the
%value before log.
%AUG21,06 add waterflow to the wandflow since we add two mass flow
%controllers
%change from calOHR_texaq.m to calmergeOHR.m. This one is used to generate
%the data for submission.
%Oct 05,06 make a new function julian.m, which is easier to use.
%Oct 05,06 add a if for different minStep at different time.
%Oct 05,06 rename a lot of variables to be more readable.
%Naming rules: low case for first word, upper case for second word.
HO2FluorOn1=HO2FluorOn;
HO2FluorOff1=HO2FluorOff;
HO2RayOn1=HO2RayOn;
HO2RayOff1=HO2RayOff;
HO2FluorOn=TOHLMFluor1On;
HO2FluorOff=TOHLMFluor1Off;
HO2RayOn=TOHLMRayOn;
HO2RayOff=TOHLMRayOff;
TOHLMFluor1On=HO2FluorOn1;
TOHLMFluor1Off=HO2FluorOff1;
TOHLMRayOn=HO2RayOn1;
TOHLMRayOff=HO2RayOff1;
clear HO2FluorOn1 HO2FluorOff1 HO2RayOn1 HO2RayOff1;
warning off;
%Just because there was no data for the first few days

%some points
%1.reaction time=distance/(average of velocity of last 2 pts)
%2.massFlow is being used to calculate reactivity based on known reaction
%coefficient

TOHLMFluor1On(TOHLMFluor1On==0)=NaN;%get rid of points where there are no laser power.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%data preparation based on different configurations.
%Actual Velocity = (standard velocity)((273+Tm )/ (273+21.1 ))(101.4 /Pm)  
 correctAirVeOn=TOHLMAirVeOn.*(101.4./TOHLMPressOn).*(TOHLMT1On+273.15)/294.15;
 origAirVel=TOHLMAirVeOn;
% CorrectAirVeOn=TOHLMAirVeOn;
wandPosition=TOHLMPosOn;
tohlmPress=TOHLMPressOn;

%change from kpa to psig
c3f6RegPress=(C3F6RegulatOn-75)./101.3*14.69+14.69;
lowFritPress=0.145.*TOHLMPressOn;
% c3f6RegPress=C3F6RegulatOn;%offset is 75kpa,but the fitted equation already consider the offset

%the step number of the starting point from 100 to 1000 on 05/04/06
%in Houston2006, we measured the distance from the inlet to the hole of 
%the Teflon head is about 1.21-0.3-0.375=0.535
if julian(dateInput)>257
minStep=100;
firstDistance=0.535;%inch
else
    minStep=1000;
    firstDistance=1.355;%2.03-0.3-0.375=1.355
end
maxStep=4150;
stepNumber=(maxStep-minStep)/450+1;
%k is used to control the total times of decay, l is used to control the position of each decay 
dataPoint=2;
decayNum=1;

%before 256(09/13/06?), we use C3F6FlowOn to control the cal flow. After
%that, we use NOCalFlowOn.
if julian(dateInput)>256
    calFlow=NOCalFlowOn;
else
    calFlow=C3F6FlowOn;
end

blowerVolt=TOHLMBlowerOn;

% there are two variables now for TOHLMBlowerOn
if exist('TOHLMBlowerOn1')
    if TOHLMBlowerOn1>TOHLMBlowerOn
        blowerVolt=TOHLMBlowerOn;
    else
        blowerVolt=TOHLMBlowerOn1;
    end;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%this part is mainly for quenching.
sigOffNorm1=TOHLMFluor1Off./TOHLMUVPowOff;
sigOnNorm1=TOHLMFluor1On./TOHLMUVPowOn;
diffNormCts1=sigOnNorm1-sigOffNorm1;
diffNormCts1(diffNormCts1<=0)=NaN;


%filter out calibration
diffNormCts1(CalBitOn~=0)=NaN;

diffExpCts1=log(diffNormCts1');

% sigOffNorm2=TOHLMFluor2Off./TOHLMUVPowOff;
% sigOnNorm2=TOHLMFluor2On./TOHLMUVPowOn;
% diffNormCts2=sigOnNorm2-sigOffNorm2;
% diffNormCts2(diffNormCts2<=0)=NaN;
% diffExpCts2=log(diffNormCts2');
% 
% sigOffNorm3=TOHLMFluor3Off./TOHLMUVPowOff;
% sigOnNorm3=TOHLMFluor3On./TOHLMUVPowOn;
% diffNormCts3=sigOnNorm3-sigOffNorm3;
% diffNormCts3(diffNormCts3<=0)=NaN;
% diffExpCts3=log(diffNormCts3');
% 
% sigOffNorm4=TOHLMFluor4Off./TOHLMUVPowOff;
% sigOnNorm4=TOHLMFluor4On./TOHLMUVPowOn;
% diffNormCts4=sigOnNorm4-sigOffNorm4;
% diffNormCts4(diffNormCts4<=0)=NaN;
% diffExpCts4=log(diffNormCts4');
% 
% 
% quchMatrix=[diffExpCts2;diffExpCts3;diffExpCts4];
% quchMatrix=quchMatrix';
% 
% % Do a conventional least squares regression
% % to get Tzero data
% for i=1:length(quchMatrix)
%     eachquch=quchMatrix(i,:);
%     [quchTzero(i),quchMixing(i),quchCor(i)]=getTzero(eachquch);
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%reorganize the data to a 2-d matrix
%stepIndex is the position for each single decay.
while dataPoint<length(diffExpCts1); % this "while" is to reshape the vector to a 2d matrix, where the row is each single decay.
     if (wandPosition(dataPoint)==minStep|wandPosition(dataPoint)==minStep+450|wandPosition(dataPoint)==minStep+900 ...
         |wandPosition(dataPoint)==minStep+1350)
     %record the starting point for each decay.
%         decayIndex(decayNum)=dataPoint;
        startPointTime(decayNum)=Time(dataPoint);
        stopFlag=0;
        stepIndex=1;
      while stopFlag==0 & dataPoint<length(diffExpCts1) & stepIndex<=stepNumber% this "while" is to put each step in each row.
%only for repeated steps          
         if wandPosition(dataPoint) == wandPosition(dataPoint-1)
            ohDecay(decayNum,stepIndex-1)=(diffNormCts1(dataPoint)+diffNormCts1(dataPoint-1))/2;
            wandLocation(decayNum,stepIndex-1)=(wandPosition(dataPoint)+wandPosition(dataPoint-1))/2;
            airVelocity(decayNum,stepIndex-1)=(correctAirVeOn(dataPoint)+correctAirVeOn(dataPoint-1))/2;
            stepIndex=stepIndex-1;
         end

         ohExpDecay(decayNum,stepIndex)=diffExpCts1(dataPoint);
         ohDecay(decayNum,stepIndex)=diffNormCts1(dataPoint);
%          f0OhExpDecay(decayNum,stepIndex)=quchTzero(dataPoint);
%          quchGamma(decayNum,stepIndex)=quchMixing(dataPoint);
%          %to look at the uncerntainty of the linear fitting
%          quchR2(decayNum,stepIndex)=quchCor(dataPoint);

         ohOnlineCounts(decayNum,stepIndex)=TOHLMFluor1On(dataPoint);
         ohOfflineCounts(decayNum,stepIndex)=TOHLMFluor1Off(dataPoint);
         wandLocation(decayNum,stepIndex)=wandPosition(dataPoint);         
         airVelocity(decayNum,stepIndex)=correctAirVeOn(dataPoint);
         airVelReading(decayNum,stepIndex)=origAirVel(dataPoint);
         %try to get rid of the line-shifting effect
         refCell(decayNum,stepIndex)=RefCellOn(dataPoint)-RefCellOff(dataPoint);
         %get some information about solenoids
         calFlag(decayNum,stepIndex)=CalBitOn(dataPoint);
         cellPress(decayNum,stepIndex)=TOHLMCellPOn(dataPoint); %to look at the cell pressure change
         
         %cross section=45.6cm^2
%          massflow(decayNum,stepIndex)=origairvel(dataPoint)*45.6/10000*60*1000*(50/80)+TOHLMN2FloOn(dataPoint);% to L/min
%         massflow(decayNum,stepIndex)=origairvel(dataPoint)*191.97-1.963; %this equation is used
%         for INTEX-B with the conic wand head
%we changed the wand head to another one, which is closer to the old TOHLM
          massFlow(decayNum,stepIndex)=origAirVel(dataPoint)*207.35-6.4443;
%          massflow(decayNum,stepIndex)=45.6*origairvel(dataPoint)./10.*60;
         blower(decayNum,stepIndex)=blowerVolt(dataPoint);
%          waterVaporFlow(decayNum,stepIndex)=TOHLMN2FloOn(dataPoint)+TOHLMH2OFlOn(dataPoint);
         waterVaporFlow(decayNum,stepIndex)=TOHLMN2FloOn(dataPoint);
         temp1On(decayNum,stepIndex)=TOHLMT1On(dataPoint);
         temp2On(decayNum,stepIndex)=TOHLMT2On(dataPoint);
         tubePress(decayNum,stepIndex)=TOHLMPressOn(dataPoint);
%          c3f6switch(decayNum,stepIndex)=(TOHLMC3F61On(dataPoint)&TOHLMC3F62On(dataPoint));
         c3f6Switch(decayNum,stepIndex)=TOHLMC3F61On(dataPoint);
         c3f6Press(decayNum,stepIndex)=c3f6RegPress(dataPoint);
         %y = 9.548E-04x^2.405 for frit (sccm)
         %c3f6addflow(decayNum,stepIndex)=9.548e-4*c3f6regpress(dataPoint)^2.405;%sccm for psig
%          c3f6Addflow(decayNum,stepIndex)=3.666e-5.*c3f6RegPress(dataPoint)^2.192;%sccm for kpa
         c3f6Addflow(decayNum,stepIndex)=(c3f6RegPress(dataPoint).^2-lowFritPress(dataPoint).^2).*0.0052-0.0472;
         %new equation based on the square difference of the absolute
         %pressure.flow(sccm)=0.0052*(square difference,psi)-0.0472;
         %c3f6addflow(decayNum,stepIndex)=3.831e-2.*(c3f6regpress(dataPoint)-TOHLMPressOn(dataPoint))^1.034;
         coAddFlow(decayNum,stepIndex)=calFlow(dataPoint);
         %mixing
         if wandPosition(dataPoint)>=maxStep | wandPosition(dataPoint)>wandPosition(dataPoint+1)
             endPointTime(decayNum)=Time(dataPoint); %get the end point for each single decay
            decayLength(decayNum)=stepIndex; %get the length of each decay.
            decayNum=decayNum+1;
            stopFlag=1;
            
         else
            dataPoint=dataPoint+1;      
         end% end of the if
         stepIndex=stepIndex+1;%go to next step during one single decay
      end% end of the second while
     end% end of the first if
   dataPoint=dataPoint+1;
   
end % end of the first while
endPointTime(decayNum)=Time(dataPoint-1);%for the last point
endPointTime=endPointTime(1:length(startPointTime));
%to cut off endpoint for last one decay 
%just incase the last point of last decay is the last step

%get rid of some zeros caused by manual change of motor steps
airVelocity(airVelocity==0)=NaN;
ohDecay(ohDecay==0)=NaN;
% f0OhExpDecay(f0OhExpDecay==0)=NaN;
tubePress(tubePress==0)=NaN;
cellPress(cellPress==0)=NaN;
calFlag(isnan(tubePress))=NaN;

temp1On(temp1On==0)=NaN;
temp2On(temp2On==0)=NaN;
wandLocation(wandLocation==0)=NaN;
refCell(refCell==0)=NaN;
% noConc(noConc==0)=NaN;%urnsolved problem for fill_NaN
% c3f6Press(c3f6Press==0)=NaN;
% c3f6AddFlow(c3f6AddFlow==0)=NaN;
%to filter out those manual zeros
% c3f6Switch(isnan(c3f6AddFlow))=NaN;
% c3f6Flag=nanmean(c3f6Switch');
coAddFlow(coAddFlow==0)=NaN;
% quchGamma(quchGamma==0)=NaN;
clear stopFlag dataPoint decayNum stepIndex;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%calculate decay based on 3 methods
% distance=firstDistance*2.54/100+0.106.*(wandLocation-minStep)./4500;
distance=0.46*2.54/100+0.106*(wandLocation-minStep)/4500;

reactTemp=temp1On+273.15;
for decayIndex=1:length(ohDecay(:,1))
   meanVelocity(decayIndex)=mean(airVelocity(decayIndex,(stepNumber-2):stepNumber));
   meanMassFlow(decayIndex)=mean(massFlow(decayIndex,(stepNumber-2):stepNumber));
   meanTemp(decayIndex)=mean(temp1On(decayIndex,:));%get Temp
   meanTubePress(decayIndex)=mean(tubePress(decayIndex,:));%get Pressure
   meanCellPress(decayIndex)=mean(cellPress(decayIndex,:));
   meanCOAddFlow(decayIndex)=nanmean(coAddFlow(decayIndex,:));%to save for later use
   meanWaterVaporFlow(decayIndex)=nanmean(waterVaporFlow(decayIndex,:));%to save for later use
   meanBlower(decayIndex)=nanmean(blower(decayIndex,:));%to save for later use
   cellPressJumpFlag(decayIndex)=any(abs(diff(cellPress(decayIndex,:)))>1);% to find out if there is any pressure jump in one decay
   % to find out if there is big NO jump in one decay. >2 is to filter out
   % some small number over small number.
   tubeStartPress(decayIndex)=tubePress(decayIndex,1);
   tubeEndPress(decayIndex)=tubePress(decayIndex,stepNumber);
   tubePressJumpFlag(decayIndex)=any(abs(tubeStartPress(decayIndex)-tubeEndPress(decayIndex))>5);
   reacTime(decayIndex,:)=distance(decayIndex,:)./meanVelocity(decayIndex);%to save for later use
   x=reacTime(decayIndex,:);
   y=ohExpDecay(decayIndex,:);
%    z=f0OhExpDecay(decayIndex,:);
   timeDecay(decayIndex,:)=x;%for the plots later
%    signalDecay(i,:)=y;

%    fprintf('\n \n Decay number: %d, Start from',i);
%    disp(datestr(startpointTime(i)/24/3600,13)); 
   %get decay with three different ways.
   
   % for INTEX-B use. In arctas, no gate timing any more.
   [noOutLierDecay(decayIndex),noOutLierIntercept(decayIndex),noOutLierR2(decayIndex)]=delOutLierReg(x,y);
%    [f0NoOutLierDecay(decayIndex),f0NoOutLierIntercept(decayIndex),f0NoOutLierR2(decayIndex)]=delOutLierReg(x,z);
   [robDecay(decayIndex),robIntercept(decayIndex),robR2(decayIndex),exitflag]=robreg(x',y');
   if exitflag==0
       disp(['decay No.' num2str(decayIndex) ]);
   end
%    [f0RobDecay(decayIndex),f0RobIntercept(decayIndex),f0RobR2(decayIndex),exitflag]=robreg(x',z');
%    if exitflag==0
%        disp(['f0 decay No.' num2str(decayIndex) ]);
%    end
   [maxDecay(decayIndex),maxIntercept(decayIndex),maxR2(decayIndex),firstPoint(decayIndex),lastPoint(decayIndex),averageDecay(decayIndex),stddevDecay(decayIndex),availableCombins(decayIndex)]=bestDecay(x,y); 
%    [f0MaxDecay(decayIndex),f0MaxIntercept(decayIndex),f0MaxR2(decayIndex)]=bestDecay(x,z);
   %c3f6 is diluted at 1%
end
clear x y z;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% remove bad decays
% some decays are mixed HO2 decay and OH decay, so we need to get rid of
% these decays I use meanNOSol to control this, whenever meanNOSol>0, there
% must be any opening either in solNO1 or solNO2.

robDecay(robDecay>=0)=NaN;robIntercept(robDecay>=0)=NaN;
noOutLierDecay(noOutLierDecay>=0)=NaN;
maxDecay(maxDecay>=0)=NaN;
% f0RobDecay(f0RobDecay>=0)=NaN;f0RobIntercept(f0RobDecay>=0)=NaN;
% f0NoOutLierDecay(f0NoOutLierDecay>=0)=NaN;
% f0MaxDecay(f0MaxDecay>=0)=NaN;
c3f6Meanswitch=nanmean(c3f6Switch');
% averageDecay(averageDecay>0)=NaN;
% This will convert the time to the format we want.hhmmss
% T=datestr(T/24/3600,13);
% c3f6MeanSwitch=mean(c3f6Switch);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate reactivity based on known reaction coefficient.
%calculate C3F6 reactivity
%c3f6 is diluted at 1%, c3f6Addflow is sccm,massFlow is L/min
c3f6Conc=10000.*nanmean(c3f6Addflow')./max(massFlow')./1000;%ppm,10000 is from 1% to 1ppm.1000 is for sccm to L/min
c3f6Mole=c3f6Conc.*2.69e13.*nanmean(tubePress')./101.3.*(273./(nanmean(reactTemp'))) ;
density=nanmean(tubePress')./0.286./nanmean(reactTemp');%0.286 is R, density=Pressure/RT.
reynoldsNumber=density.*(meanMassFlow.*1e3./60./45.6./100).*0.0762./1.81e-5;%1e3 is L to cm^3,60 is for min to second, 
%45.6 is the cross section of the flow tube, 45.6cm^2, 100 is cm to
%m;Re=density*avergeVelocity*Diameter/viscosity, which is 1.81e-5 Kg/m*s,
%0.0762m is the diameter of the tube

calC3F6=c3f6Mole.*6e-13.*exp(370./nanmean(reactTemp')) ;%From Dubey 1996;
calC3F6(nanmean(c3f6Switch')==0)=NaN;
c3f6Mole(nanmean(c3f6Switch')==0)=NaN;
%CO
coConc=200.*nanmean(coAddFlow')./max(massFlow')./1000;%unit is ppm
coMole=coConc.*2.69e13.*nanmean(tubePress')./101.3.*(273./(nanmean(reactTemp'))) ;
calCO=coMole.*1.5e-13.*(1+0.6.*nanmean(tubePress'./101.3));%reaction coefficient is 1.5e-13*(1+0.6atm)

% calculate propane, isoprene, propene reactivity
isopreneMole=coMole*1/200;% Isoprene is 1ppm
calIsoprene=isopreneMole.*2.7e-11.*exp(390./nanmean(reactTemp')) ;%from Atkinson

propaneMole=coMole*10.3/200;% Propane is 10.3ppm
calPropane=propaneMole.*1e-11.*exp(-660./nanmean(reactTemp')) ;%from JPL 1e-11*exp(-660/T)

propeneMole=coMole*0.918/200; % propene is 0.918 ppm
% KMT16  :  OH  +  C3H6 
% IUPAC 2001 
K160     = 8.00E-27.*((nanmean(reactTemp')./300).^-3.5).*2.69e19.*nanmean(tubePress')./101.3.*(273./(nanmean(reactTemp')));
K16I     = 3.00E-11 ;
KR16     = K160./K16I ;
FC16     = 0.5 ;
F16      = 10.^(log10(FC16)./(1+(log10(KR16)).^2)) ;
KMT16    = (K160.*K16I).*F16./(K160+K16I) ;
calPropene=propeneMole.*KMT16;

midTime=(startPointTime+endPointTime)/2;
sec=midTime./86400;
doy=julian(dateInput)+sec;

clear distance 

