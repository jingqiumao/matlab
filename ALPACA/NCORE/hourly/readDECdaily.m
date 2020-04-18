set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

opts=detectImportOptions('daily_SPEC_2018.csv');
% preview('daily_SPEC_2018.csv', opts)
[StateCode, CountyCode, SiteNum, ParameterCode, POC, Latitude, Longitude, Datum, ParameterName, SampleDuration, PollutantStandard, DateLocal, UnitsOfMeasure, EventType, ObservationCount, ObservationPercent, ArithmeticMean]=readvars('daily_SPEC_2018.csv');

%Alaska is 02, Fairbanks County is 090, NCORE site is 034?
%uslfate, nitrate, and chloride
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88403);
sulfate_time=DateLocal(indx);
sulfate=ArithmeticMean(indx);

indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88101);
PM25_time=DateLocal(indx);
PM25_FRM=ArithmeticMean(indx);

figure
plot(DateLocal(indx),ArithmeticMean(indx));
hold on
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88306);
plot(DateLocal(indx),ArithmeticMean(indx),'k');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88203);
plot(DateLocal(indx),ArithmeticMean(indx),'r');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88301);
plot(DateLocal(indx),ArithmeticMean(indx),'g');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88109);
plot(DateLocal(indx),ArithmeticMean(indx),'y');
legend('sulfate','nitrate','chloride','ammonium','bromine')

%barium 88107, Strontium 88168, Zinc 88167, Chromium 88112
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88107);
figure
plot(DateLocal(indx),ArithmeticMean(indx));
hold on
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88168);
plot(DateLocal(indx),ArithmeticMean(indx),'k');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88167);
plot(DateLocal(indx),ArithmeticMean(indx),'r');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88112);
plot(DateLocal(indx),ArithmeticMean(indx),'g');
legend('Barium','Strontium','Zinc', 'Cr')

%Fe 88126, Cu 88114, Mn 88132, Cobalt 88113
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88126);
figure
plot(DateLocal(indx),ArithmeticMean(indx));
hold on
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88114);
plot(DateLocal(indx),ArithmeticMean(indx),'k');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88132);
plot(DateLocal(indx),ArithmeticMean(indx),'r');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88113);
plot(DateLocal(indx),ArithmeticMean(indx),'g');
legend('Fe','Cu','Mn','Co')

indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88184);
figure
plot(DateLocal(indx),ArithmeticMean(indx));
hold on
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88303);
plot(DateLocal(indx),ArithmeticMean(indx),'k');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88140);
plot(DateLocal(indx),ArithmeticMean(indx),'r');
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88111);
plot(DateLocal(indx),ArithmeticMean(indx),'g');
legend('Na','K','Mg','Ca')

indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88403);
sulfate=ArithmeticMean(indx);
indx=find(StateCode==02 & CountyCode ==90 & SiteNum ==034 & ParameterCode==88169);
sulfur=ArithmeticMean(indx);
%88163	Scandium PM2.5 LC
% 88154	Selenium PM2.5 LC
% 88165	Silicon PM2.5 LC
% 88166	Silver PM2.5 LC
% 88302	Sodium Ion Pm2.5 LC
% 88184	Sodium PM2.5 LC
% 88168	Strontium PM2.5 LC
% 88403	Sulfate PM2.5 LC
% 88169	Sulfur PM2.5 LC
% 88170	Tantalum PM2.5 LC
% 88172	Terbium PM2.5 LC
% 88160	Tin PM2.5 LC
% 88161	Titanium PM2.5 LC
% 88312	Total Carbon PM2.5 LC TOT
% 88306	Total Nitrate PM2.5 LC
% 88186	Tungsten PM2.5 LC
% 88314	UV Carbon PM2.5 at 370 nm
% 88179	Uranium PM2.5 LC
% 88164	Vanadium PM2.5 LC
% 88309	Volatile Nitrate PM2.5 LC
% 88183	Yttrium PM2.5 LC
% 88167	Zinc PM2.5 LC
% 88185	Zirconium PM2.5 LC
% 88313	Black Carbon PM2.5 at 880 nm

% 88102	Antimony PM2.5 LC
% 88103	Arsenic PM2.5 LC

% 88107	Barium PM2.5 LC
% 88105	Beryllium PM2.5 LC
% 88313	Black Carbon PM2.5 at 880 nm
% 88109	Bromine PM2.5 LC
% 88110	Cadmium PM2.5 LC
% 88111	Calcium PM2.5 LC
% 88308	Carbonate Carbon CSN PM2.5 LC TOT
% 88117	Cerium PM2.5 LC
% 88118	Cesium PM2.5 LC
% 88203	Chloride PM2.5 LC
% 88115	Chlorine PM2.5 LC
% 88112	Chromium PM2.5 LC
% 88113	Cobalt PM2.5 LC
% 88114	Copper PM2.5 LC

% 88121	Europium PM2.5 LC
% 88124	Gallium PM2.5 LC
% 88143	Gold PM2.5 LC
% 88127	Hafnium PM2.5 LC
% 88131	Indium PM2.5 LC
% 88133	Iridium PM2.5 LC
% 88126	Iron PM2.5 LC
% 88146	Lanthanum PM2.5 LC
% 88128	Lead PM2.5 LC
% 88140	Magnesium PM2.5 LC
% 88132	Manganese PM2.5 LC
% 88142	Mercury PM2.5 LC
% 88134	Molybdenum PM2.5 LC
% 88136	Nickel PM2.5 LC
% 88147	Niobium PM2.5 LC
% 88152	Phosphorus PM2.5 LC
% 88303	Potassium Ion PM2.5 LC
% 88180	Potassium PM2.5 LC
% 88176	Rubidium PM2.5 LC
% 88162	Samarium PM2.5 LC