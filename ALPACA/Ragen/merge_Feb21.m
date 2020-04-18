% H1	14:55	15:55	21-Feb
% H2	15:55	16:56	
% H3	16:56	17:56	
% H4	17:56	18:56	
% H5	18:56	19:57	
% H6	19:57	20:57	
% H7	20:57	21:57	
% H8	21:57	22:57	
% H9	22:57	23:58	
% H10	23:58	0:58	22-Feb
% H11	0:58	1:58	
% H12	1:58	2:59	
% H13	2:59	3:59	
% H14	3:59	4:49	
% H15	4:49	5:59	
% H16	5:59	7:00	
% H17	7:00	8:00	
% H18	8:00	9:00	
% H19	9:01	10:02	
% H20	10:02	11:02	
% H21	11:02	12:02	
% H22	12:02	13:03	
% H23	13:03	14:03	
% H24	14:03	15:03	

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[20.24889491
19.06818858
10.81795983
16.53180996
18.90534539
24.49746662
20.24786674
30.22374999
25.32031124
16.37464507
37.04017184
26.4895589
20.05072864
20.54127761
31.32345663
27.26786383
27.5458743
41.32247248
15.26260058
12.83371716
49.05071989
29.55841185
20.99042063
NaN];

Na_IC=[8.671872541
-3.960244376
3.35193006
14.3976585
-10.74192454
-3.454973676
13.21736047
7.053042427
18.18800803
17.76768612
-3.919405091
23.99993628
18.81073994
5.797709917
4.854364838
22.68267294
12.30117417
7.851965548
21.43323807
-8.142699365
-1.728732303
62.22514824
34.92919475
41.68852542];

Mg_ICPMS=[3.522962828
5.041122231
1.807012828
3.15189636
3.659550623
6.853668767
4.955277178
5.924101384
6.370410235
3.231752118
7.473373698
6.47636171
6.079065778
3.06947299
5.357139051
6.727022905
5.052651205
10.20351105
3.101884494
2.615111127
9.872019763
6.838387634
4.335962617
NaN];

Mg_IC=[-1.966999155
-2.869188888
-1.285835378
11.58293302
-5.873350301
0.606758742
14.12545767
-3.210402239
3.536860952
15.48547924
-2.343641833
14.23364713
1.688004931
10.98013886
11.56515738
13.77376377
4.314692647
-1.39112678
4.389986781
3.119039504
-0.850266897
4.793135731
17.22334276
24.55924059];

K_ICPMS=[27.04706501
33.73705815
20.56297837
26.63053555
30.47522152
41.36683575
36.93554555
53.64208733
42.61120039
32.16496462
91.11493099
43.63303202
36.91492292
29.4844326
46.91966426
37.18071298
46.77846569
62.10118744
27.66656253
19.14406123
81.33274734
49.98063778
34.91626621
NaN];

K_IC=[36.31740492
-0.766338757
26.44343849
69.76993485
-16.02818355
-3.573458755
35.43299556
36.21452758
49.71743542
43.08287097
8.430858375
90.82197922
61.43541473
21.56499864
16.96928387
51.96420431
22.04242376
26.38665558
37.15948495
-10.67844619
15.57370752
170.7201749
108.5119764
130.0022234];

Ca_ICPMS=[50.5234236
47.50026432
13.76762214
34.92787275
44.59736745
62.13926846
42.47517699
83.25996602
66.37974809
31.54018829
73.88684639
70.94688915
50.6588759
101.6471956
74.42276133
62.97501772
55.89742259
116.33165
39.16726533
23.44756227
126.8926107
81.12462495
48.44360533
NaN];

Ca_IC=[3.037745802
1.180849574
10.30243074
12.57625754
-5.090658194
6.332424259
30.87909472
4.7590646
28.59734757
39.13703099
0.444207845
29.41436875
30.75111363
22.88289918
15.36960653
35.77191564
24.07080793
10.40510726
47.00867461
4.001606099
4.519668116
73.71900134
49.06635012
55.60406952];

Mn_ICPMS=[0.047437435
0.100688374
0.027770703
0.028220856
0.042819399
0.093119898
0.044552512
0.169338184
0.058210569
0.035474247
0.025170236
0.058940742
0.070031004
0.031921481
0.052910927
0.070754906
0.072228667
0.133348105
0.140778673
0.034545758
0.097584742
0.123524524
0.037511116
NaN];

%here I use Iron 56 #1
Fe_ICPMS=[0.584248331
0.086966971
-0.205585879
0.080589091
-0.043450387
0.067952807
NaN
0.173819393
0.04679851
-0.079262579
NaN
-0.008434029
0.259186073
-0.053063932
0.021872307
-0.091643109
0.283407537
-0.035358687
-0.125596532
-0.16131331
0.695895926
-0.091131281
-0.239018216
NaN];

Cu_ICPMS=[0.296778767
0.500522093
0.139568855
0.140479962
0.107280387
0.399669723
0.185935105
0.453430208
0.264939589
0.241302052
0.015747692
0.176164782
0.314346334
0.368817547
0.215198428
0.262278831
0.335296568
0.43870359
0.310987928
0.19431524
0.67087546
0.167181979
0.213257338
NaN];

Zn_ICPMS=[3.921842512
4.251296143
2.02924638
5.969207053
2.027297991
3.666407078
2.924686569
5.158518907
3.277957627
4.323865911
2.445176374
3.741499209
2.758714078
5.736892971
4.080398336
3.003662395
4.45161344
4.849296117
3.736489854
2.629359619
6.323582514
3.864923839
3.17524017
NaN];

corr_fac=[0.984660432;
0.919421993;
0.910787446;
0.920668322;
0.9208765;
0.934296778;
0.945287741;
0.923260436;
0.861507694;
0.818046696;
0.773859657;
0.810257051;
0.817005275;
0.813577323;
0.80407711;
0.825331796;
0.804344596;
0.812125234;
0.849327157;
0.922523537;
0.928849027;
0.958678974;
0.984244127;
NaN];% the last correction factor is weird.


sulfate=[12.42243901
3.278139273
7.211638376
10.50486603
0.047526807
1.270878403
8.413738481
6.410643594
10.9860556
11.56967276
4.185782896
14.73447794
12.40842029
4.554560082
1.570658908
9.441672924
8.395167795
7.179622186
16.66617119
1.70825477
9.574685824
25.58402774
23.01517046
19.96318022];

nitrate=[140.1687571
112.7653759
77.3864709
95.49090909
67.19162304
79.94788274
87.16083916
67.12304251
116.5497835
77.08266129
64.49903661
274.6782274
84.52480916
65.01236917
51.95117371
135.9473931
166.7840909
83.46385831
118.8359486
64.32725481
97.82205647
220.5991189
152.6169377
198.9014396];

chloride=[148.2765978
115.7547945
154.9842785
139.1155424
98.44562959
124.6997933
221.8028075
173.5228668
212.6470883
230.8937261
122.3540555
218.3052437
241.4994048
170.1293145
94.21237207
193.9228836
218.9929699
164.6853451
316.6671513
98.81495934
93.56722741
407.6678887
315.4428599
216.8418342];

ammonium=[0.0
0.0
0.0
21.10643379
0.0
2.615298522
31.53141767
0.0
7.718170116
39.77770542
0.0
15.36347546
0.0
10.31542778
34.34094329
29.81437416
0.0
0.0
0.0
2.666499446
0.0
0.0
27.48471527
69.05086362];

Sr=[-0.822021898;
-0.827445674;
-0.839314006;
-0.803588498;
-0.832845898;
-0.862546545;
-0.877343132;
-0.867321958;
-0.87587009;
-0.870571018;
-0.822119319;
-0.84977779;
-0.867272635;
-0.852501055;
-0.844839502;
-0.868840285;
-0.860303861;
-0.859019477;
-0.920767376;
-0.824684649;
-0.806272539;
-0.907926906;
-0.881468844;
-0.829937554;];

%provided by ragen
%Jan *0.0172./0.672
%Feb *0.014./0.76266
sulfate_conc=sulfate.*0.014./0.76266;
nitrate_conc=nitrate.*0.014./0.76266;
ammonium_conc=ammonium.*0.014./0.76266;
chloride_conc=chloride.*0.014./0.76266;
K_ICPMS_conc=K_ICPMS.*0.014./0.76266;
Mg_ICPMS_conc=Mg_ICPMS.*0.014./0.76266;
Na_ICPMS_conc=Na_ICPMS.*0.014./0.76266;
Fe_ICPMS_conc=Fe_ICPMS.*0.014./0.76266;
Cu_ICPMS_conc=Cu_ICPMS.*0.014./0.76266;
Ca_ICPMS_conc=Ca_ICPMS.*0.014./0.76266;
Zn_ICPMS_conc=Zn_ICPMS.*0.014./0.76266;
Mn_ICPMS_conc=Mn_ICPMS.*0.014./0.76266;
Ca_IC_conc=Ca_IC.*0.014./0.76266;
K_IC_conc=K_IC.*0.014./0.76266;
Mg_IC_conc=Mg_IC.*0.014./0.76266;
Na_IC_conc=Na_IC.*0.014./0.76266;

doy=(15/24):(1/24):(38/24);

doy=doy+julian('0221')+365;

load NCOREdata.mat
%here is to find the matching DEC data
delta_a = 1/24;
for i=1:length(doy)
      k=find((CO_time<=doy(i)+delta_a/2) & (CO_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(CO(k))));
            if isempty(kk)
               CO_new(i)=NaN;
            else
               CO_new(i)=mean(CO(k(kk)));
            end
        else
            CO_new(i)=NaN;
      end
      
      k=find((SO2_time<=doy(i)+delta_a/2) & (SO2_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(SO2(k))));
            if isempty(kk)
               SO2_new(i)=NaN;
            else
               SO2_new(i)=mean(SO2(k(kk)));
            end
        else
            SO2_new(i)=NaN;
      end
      
      k=find((O3_time<=doy(i)+delta_a/2) & (O3_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(O3(k))));
            if isempty(kk)
               O3_new(i)=NaN;
            else
               O3_new(i)=mean(O3(k(kk)));
            end
        else
            O3_new(i)=NaN;
      end
      
      k=find((NO2_time<=doy(i)+delta_a/2) & (NO2_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NO2(k))));
            if isempty(kk)
               NO2_new(i)=NaN;
            else
               NO2_new(i)=mean(NO2(k(kk)));
            end
        else
            NO2_new(i)=NaN;
      end
      
      k=find((NOa_time<=doy(i)+delta_a/2) & (NOa_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOa(k))));
            if isempty(kk)
               NOa_new(i)=NaN;
            else
               NOa_new(i)=mean(NOa(k(kk)));
            end
        else
            NOa_new(i)=NaN;
      end
      
      k=find((NOb_time<=doy(i)+delta_a/2) & (NOb_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOb(k))));
            if isempty(kk)
               NOb_new(i)=NaN;
            else
               NOb_new(i)=mean(NOb(k(kk)));
            end
        else
            NOb_new(i)=NaN;
      end
      
      
      k=find((NOx_time<=doy(i)+delta_a/2) & (NOx_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOx(k))));
            if isempty(kk)
               NOx_new(i)=NaN;
            else
               NOx_new(i)=mean(NOx(k(kk)));
            end
        else
            NOx_new(i)=NaN;
      end
      
      k=find((NOy_time<=doy(i)+delta_a/2) & (NOy_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(NOy(k))));
            if isempty(kk)
               NOy_new(i)=NaN;
            else
               NOy_new(i)=mean(NOy(k(kk)));
            end
        else
            NOy_new(i)=NaN;
      end
      
      k=find((t3m_time<=doy(i)+delta_a/2) & (t3m_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(t3m(k))));
            if isempty(kk)
               t3m_new(i)=NaN;
            else
               t3m_new(i)=mean(t3m(k(kk)));
            end
        else
            t3m_new(i)=NaN;
      end
      
      k=find((rh_time<=doy(i)+delta_a/2) & (rh_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(rh(k))));
            if isempty(kk)
               rh_new(i)=NaN;
            else
               rh_new(i)=mean(t3m(k(kk)));
            end
        else
            rh_new(i)=NaN;
      end
      
      k=find((pm25_time<=doy(i)+delta_a/2) & (pm25_time>=doy(i)-delta_a/2));
      if ~isempty(k)
            kk=find(~(isnan(pm25(k))));
            if isempty(kk)
               pm25_new(i)=NaN;
            else
               pm25_new(i)=mean(pm25(k(kk)));
            end
        else
            pm25_new(i)=NaN;
      end
end

subplot (5,5,1)
plot(doy-417,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-417, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-417, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-417, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-417, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-417, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-417, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-417, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-417, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-417, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-417, K_ICPMS_conc, doy-417, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-417,Mg_ICPMS_conc, doy-417, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-417,Na_ICPMS_conc,doy-417,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-417,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-417,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-417,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-417,Ca_ICPMS_conc,doy-417,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-417,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-417,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-417,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-417,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-417,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);
sgtitle('Feb 21-22');

figure
cation=(fill_NaN(Na_IC)./23+fill_NaN(Mg_IC.*2)./24+ fill_NaN(K_IC)./39+ fill_NaN(Ca_IC.*2)./40 +fill_NaN(ammonium./18));
anion=sulfate.*2./96+nitrate./62 + chloride./35;
scatter(anion, cation,140, sulfate, 'filled');grid;colorbar;
ylim([0 20])
hold on;
plot(0:1:10,0:1:10,'--');
plot(0:1:10,0:2:20,'--');
plot(0:1:10,0:0.5:5,'--');

figure
scatter(pm25_new,sulfate_conc.*0.017./0.672, 40,CO_new,'filled'); grid;colorbar;caxis([0 1.5]); title('Feb 21');ylabel('sulfate');xlabel('PM2.5');

function julianday=julian(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
                month=str2num(dateinput(1:2));
                day=str2num(dateinput(3:4));
                switch month
                        case 1
                daynum = 0;
                        case 2
                            daynum = 31;
                        case 3
                            daynum = 59;
                        case 4
                            daynum = 90;
                        case 5
                            daynum = 120;
                        case 6
                            daynum = 151;
            case 7
                            daynum = 181;
                        case 8
                            daynum = 212;
                        case 9
                            daynum = 243;
                        case 10
                            daynum = 273;
                        case 11
                            daynum = 304;
                        case 12
                            daynum = 334;
                end
%                 if rem(year,4) == 0 && month > 2
%                         daynum = daynum+1;
%                 end
                julianday = daynum+day;
end
