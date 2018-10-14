% XOHAxis1 = OHFluorNormSig./COHAxis1 - OHAxis1pptOffset;
% SOHAxis2=XOHAxis1.*COHAxis2;
% XHO2Axis2= (HO2FluorNormSig-SOHAxis2)./CHO2Axis2
% In ARCTAS, OHAxis1pptOffset=0
% HO2_axis2 = HO2 (lamps on, NOsol2 on) - HO2(lamps on, NOsol2 off) - HO2 ambient (NOsol2 on, averaged between before and after that lamps are on)
% 
% OH_axis1 = OH(Lamps on) - OH(lamps off)
% 
% OH_axis2 = OH_axis2(lamps on, NOsol2 off) - OH_axis2(lamps off, NO2 off).

for i=1:max(Calnumber)
    a=find(Calnumber==i);
%     CalOHAxis1FluorOnline_LampOn(a,:)=NaN;
%     CalOHAxis1FluorOnline_LampOff(a,:)=NaN;
%     CalOHAxis2FluorOnline_LampOn(a,:)=NaN;
%     CalOHAxis2FluorOnline_LampOff(a,:)=NaN;
%     CalHO2Axis2FluorOnline_LampOnNOSol2On(a,:)=NaN;
%     CalHO2Axis2FluorOnline_LampOnNOSol2Off(a,:)=NaN;
    %I just realize that the UV power is changing during Insitu cal
    InsituCal(i).CellPress=CellP10T(Calnumber==i);
    InsituCal(i).DOY=DOYcal(Calnumber==i);
    InsituCal(i).OHFl=OHFluor(Calnumber==i);
    InsituCal(i).HO2Fl=TOHLMFluor1(Calnumber==i);
    InsituCal(i).HgLamp=PortHgLamp(Calnumber==i);
    InsituCal(i).NO1=NOSol1(Calnumber==i);
    InsituCal(i).NO2=NOSol2(Calnumber==i);
    InsituCal(i).On=OnLine(Calnumber==i);
    InsituCal(i).Off=OffLine(Calnumber==i);
    InsituCal(i).ScanEatlon=Scan(Calnumber==i);
    InsituCal(i).OHX1FluorLampOn=OHFluor(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&StandbyCtrl==0);
    InsituCal(i).OHX1FluorLampOff=OHFluor(Calnumber==i&PortHgLamp==0&OnLine==1&Scan==0&StandbyCtrl==0);
    InsituCal(i).OHX1UVLampOn=OHUVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&StandbyCtrl==0);
    InsituCal(i).OHX1UVLampOff=OHUVPower(Calnumber==i&PortHgLamp==0&OnLine==1&Scan==0&StandbyCtrl==0);
    %TOHLMFluor1 and HO2Fluor were swapped in ARCTAS.
    InsituCal(i).OHX2FluorLampOn=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).OHX2FluorLampOff=TOHLMFluor1(Calnumber==i&PortHgLamp==0&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);%including ambinet OH online
    InsituCal(i).OHX2UVLampOn=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).OHX2UVLampOff=HO2UVPower(Calnumber==i&PortHgLamp==0&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    
    InsituCal(i).HO2X2FluorLampOnNO1Off2On=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==1&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).HO2X2FluorLampOnNO1Off2Off=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1Off2On=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==1&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1Off2Off=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);

    InsituCal(i).HO2X2FluorLampOnNO1On2On=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==1&NOSol1==1&StandbyCtrl==0);
    InsituCal(i).HO2X2FluorLampOnNO1On2Off=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==1&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1On2On=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==1&NOSol1==1&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1On2Off=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==1&StandbyCtrl==0);
    
    InsituCal(i).HO2X2FluorLampOnNO1On2Off=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==1&StandbyCtrl==0);
    InsituCal(i).HO2X2FluorLampOnNO1Off2Off=TOHLMFluor1(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1On2Off=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==1&StandbyCtrl==0);
    InsituCal(i).HO2X2UVLampOnNO1Off2Off=HO2UVPower(Calnumber==i&PortHgLamp==1&OnLine==1&Scan==0&NOSol2==0&NOSol1==0&StandbyCtrl==0);
    
end
for i=1:max(Calnumber)
    OHX1norm(i)=(nanmean(InsituCal(i).OHX1FluorLampOn./(InsituCal(i).OHX1UVLampOn.*(1-0.05.*InsituCal(i).OHX1UVLampOn)))...
        -nanmean(InsituCal(i).OHX1FluorLampOff./(InsituCal(i).OHX1UVLampOff.*(1-0.05.*InsituCal(i).OHX1UVLampOff))));
    OHX2norm(i)= (nanmean(InsituCal(i).OHX2FluorLampOn./(InsituCal(i).OHX2UVLampOn.*(1-0.05.*InsituCal(i).OHX2UVLampOn)))...
        -nanmean(InsituCal(i).OHX2FluorLampOff./(InsituCal(i).OHX2UVLampOff.*(1-0.05.*InsituCal(i).OHX2UVLampOff))));
    OHX1_OHX2(i)=OHX1norm(i)./OHX2norm(i);
    cellpressure(i)=nanmean(InsituCal(i).CellPress);
    HO2insitu(i)=nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2On./(InsituCal(i).HO2X2UVLampOnNO1Off2On.*(1-0.05.*InsituCal(i).HO2X2UVLampOnNO1Off2On)))...
        -nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2Off./(InsituCal(i).HO2X2UVLampOnNO1Off2Off.*(1-0.05.*InsituCal(i).HO2X2UVLampOnNO1Off2Off)));
    HO2ambient(i)=  nanmean([(Meas(i).HO2FluorOnbefore-Meas(i).HO2FluorOffbefore)./(Meas(i).HO2UVAvgbefore.*(1-0.05.*Meas(i).HO2UVAvgbefore));...
        (Meas(i).HO2FluorOnafter-Meas(i).HO2FluorOffafter)./(Meas(i).HO2UVAvgafter.*(1-0.05.*Meas(i).HO2UVAvgafter))]);
    HO2X2norm(i)=HO2insitu(i)-5.*HO2ambient(i);
    OHX1_HO2X2(i)=HO2X2norm(i)./OHX1norm(i);
end
% for i=1:max(Calnumber)
%     OHX1_OHX2(i)=(nanmean(InsituCal(i).OHX1FluorLampOn./(InsituCal(i).OHX1UVLampOn.*(1-0.05.*InsituCal(i).OHX1UVLampOn)))...
%         -nanmean(InsituCal(i).OHX1FluorLampOff./(InsituCal(i).OHX1UVLampOff.*(1-0.05.*InsituCal(i).OHX1UVLampOff))))./...
%         (nanmean(InsituCal(i).OHX2FluorLampOn./(InsituCal(i).OHX2UVLampOn.*(1-0.05.*InsituCal(i).OHX2UVLampOn)))...
%         -nanmean(InsituCal(i).OHX2FluorLampOff./(InsituCal(i).OHX2UVLampOff.*(1-0.05.*InsituCal(i).OHX2UVLampOff))));
%     OHX2(i)=      (nanmean(InsituCal(i).OHX2FluorLampOn./(InsituCal(i).OHX2UVLampOn.*(1-0.05.*InsituCal(i).OHX2UVLampOn)))...
%         -nanmean(InsituCal(i).OHX2FluorLampOff./(InsituCal(i).OHX2UVLampOff.*(1-0.05.*InsituCal(i).OHX2UVLampOff))));
%     cellpressure(i)=nanmean(InsituCal(i).CellPress);
%     HO2insitu(i)=nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2On./(InsituCal(i).HO2X2UVLampOnNO1Off2On.*(1-0.05.*InsituCal(i).HO2X2UVLampOnNO1Off2On)))...
%         -nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2Off./(InsituCal(i).HO2X2UVLampOnNO1Off2Off.*(1-0.05.*InsituCal(i).HO2X2UVLampOnNO1Off2Off)));
%     HO2ambient(i)= nanmean([(Meas(i).HO2FluorOnbefore-Meas(i).HO2FluorOffbefore)./(Meas(i).HO2UVAvgbefore.*(1-0.05.*Meas(i).HO2UVAvgbefore));...
%         (Meas(i).HO2FluorOnafter-Meas(i).HO2FluorOffafter)./(Meas(i).HO2UVAvgafter.*(1-0.05.*Meas(i).HO2UVAvgafter))]);
%     HO2X2(i)=HO2insitu(i)-5.*HO2ambient(i);  
% %     HO2X2_OHX2(i)=HO2X2(i)./(nanmean(InsituCal(i).OHX2FluorLampOn./(InsituCal(i).OHX2UVLampOn.*(1-0.05.*InsituCal(i).OHX2UVLampOn)))...
% %         -nanmean(InsituCal(i).OHX2FluorLampOff./(InsituCal(i).OHX2UVLampOff.*(1-0.05.*InsituCal(i).OHX2UVLampOff))));
%     OHX1_HO2X2(i)=(nanmean(InsituCal(i).OHX1FluorLampOn./(InsituCal(i).OHX1UVLampOn.*(1-0.05.*InsituCal(i).OHX1UVLampOn)))...
%         -nanmean(InsituCal(i).OHX1FluorLampOff./(InsituCal(i).OHX1UVLampOff.*(1-0.05.*InsituCal(i).OHX1UVLampOff))))./HO2X2(i);
% end
for i=1:max(Calnumber)
    a=find(Calnumber==i);
    %for each cal, get the mean 
    %since COHAxis1 and COHAxis2 include the UVPower, that is why I
    %multiply the UVPower at the end.
    InsituCal(i).OHX1=(nanmean(InsituCal(i).OHX1FluorLampOn./InsituCal(i).OHX1UVLampOn)-nanmean(InsituCal(i).OHX1FluorLampOff./InsituCal(i).OHX1UVLampOff))...
        ./nanmean([Meas(i).COHAxis1before;Meas(i).COHAxis1after]).*nanmean([Meas(i).OHUVAvgbefore;Meas(i).OHUVAvgafter]);
    InsituCal(i).OHX2=(nanmean(InsituCal(i).OHX2FluorLampOn./InsituCal(i).OHX2UVLampOn)-nanmean(InsituCal(i).OHX2FluorLampOff./InsituCal(i).OHX2UVLampOff))...
        ./nanmean([Meas(i).COHAxis2before;Meas(i).COHAxis2after]).*nanmean([Meas(i).HO2UVAvgbefore;Meas(i).HO2UVAvgafter]);
    InsituCal(i).HO2X2=(nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2On./InsituCal(i).HO2X2UVLampOnNO1Off2On)-nanmean(InsituCal(i).HO2X2FluorLampOnNO1Off2Off./InsituCal(i).HO2X2UVLampOnNO1Off2Off))...
        ./nanmean([Meas(i).CHO2Axis2before;Meas(i).CHO2Axis2after]).*nanmean([Meas(i).HO2UVAvgbefore;Meas(i).HO2UVAvgafter])-nanmean([Meas(i).XHO2Axis2before;Meas(i).XHO2Axis2after]);
% CalOHAxis1(i)=(nanmean(CalOHAxis1FluorOnline_LampOn(a))-nanmean(CalOHAxis1FluorOnline_LampOff(a)))./nanmean(OHUVPower(a))./nanmean([MeasCOHAxis1_before(a);MeasCOHAxis1_after(a)]).*...
%     nanmean([MeasOHUVAvg_before(a);MeasOHUVAvg_after(a)]);
% CalOHAxis2(i)=(nanmean(CalOHAxis2FluorOnline_LampOn(a))-nanmean(CalOHAxis2FluorOnline_LampOff(a)))./nanmean(OHUVPower(a))./nanmean([MeasCOHAxis2_before(a);MeasCOHAxis2_after(a)]).*...
%     nanmean([MeasHO2UVAvg_before(a);MeasHO2UVAvg_after(a)]);%????Is this right?
%HO2_axis2 =( HO2 (lamps on, NOsol2 on) - HO2(lamps on, NOsol2 off))/Power/Sensitivity number - HO2
%ambient (NOsol2 on, averaged between before and after that lamps are on)
% CalAmbHO2(i)=nanmean([MeasXHO2Axis2_before(a);MeasXHO2Axis2_after(a)]);
% CalHO2Axis2(i)=(nanmean(CalHO2Axis2FluorOnline_LampOnNOSol2On(a))-nanmean(CalHO2Axis2FluorOnline_LampOnNOSol2Off(a)))./nanmean(HO2UVPower(a))./nanmean([MeasCHO2Axis2_before(a);MeasCHO2Axis2_after(a)]).*...
%     nanmean([MeasHO2UVAvg_before(a);MeasHO2UVAvg_after(a)])-CalAmbHO2(i);%I think I should not subtract CalOHAxis2, is that right?
end
