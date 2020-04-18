% H1	16:13	17:13	28-Jan
% H2	17:13	18:14	
% H3	18:14	19:14	
% H4	19:14	20:14	
% H5	20:14	21:15	
% H6	21:15	22:15	
% H7	22:15	23:15	
% H8	23:15	0:15	29-Jan
% H9	0:15	1:16	
% H10	1:16	2:16	
% H11	2:16	3:16	
% H12	3:16	4:17	
% H13	4:17	5:17	
% H14	6:02	7:02	
% H15	7:02	8:03	
% H16	8:03	9:03	
% H17	9:03	10:03	
% H18	10:03	11:04	
% H19	11:04	12:04	
% H20	12:05	13:05	
% H21	13:05	14:06	
% H22	14:06	15:06	
% H23	15:06	16:06	
% H24	16:06	17:07	

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[7.920319218
2.444446488
5.889941813
2.395961884
6.137140769
-5.137432157
5.369105211
-8.765480075
0.487179254
-3.298058866
-1.437605486
0.888741714
-3.986728179
-0.079263109
-6.693581529
-4.030510079
6.53477682
-8.078134507
7.187961297
77.02035957
-3.635383165
0.222894355
NaN
-4.367586421];

Na_IC=[10.66314352
24.2738396
10.94305327
9.50824218
9.372938727
5.29078539
7.581294869
6.522912123
2.855362632
18.85336462
-0.976346906
2.863178304
2.199291593
5.45507943
1.869298732
3.292232329
13.32345587
4.325245948
5.307387474
47.7632463
4.646264458
1.374260231
5.92034036
1.631202801];

Mg_ICPMS=[5.860100927
3.463296367
3.935057221
3.291672272
3.215518691
3.409499471
3.367466068
2.549276952
3.202305174
3.480557903
2.183596701
2.963107425
1.259422071
3.020168576
2.549211619
4.136504716
2.922562494
0.637065746
5.47524614
4.698761714
1.189965325
3.914418666
NaN
5.407377607];

Mg_IC=[6.75175268
13.48879682
7.852565349
8.884113297
0.517349779
5.775490419
3.308980587
11.95792575
-0.923013458
13.00471276
0.729584095
-0.441505493
1.460398597
2.139659924
0.842292453
0.866877155
0.143349749
-0.491733045
4.539762284
2.098711895
-0.541414189
-0.464807163
0.588099233
1.397858249];

K_ICPMS=[27.15549448
9.149157781
18.67181136
12.94672425
23.80019833
5.957070953
23.53824017
1.134285685
15.16292423
12.20510762
4.179554658
15.61344718
6.122153469
16.50758587
3.747364269
12.74009002
10.55266577
-12.09166918
24.54644161
68.70960433
-7.495658368
8.895292959
NaN
6.793793261];

K_IC=[24.33363764
62.00828518
18.32095184
14.97179041
22.72716648
10.50730067
22.03746989
4.231718129
10.92432741
34.90260298
-5.007016753
9.891963494
-1.762458728
15.3040203
8.913376687
11.60190348
32.82105212
8.562254196
18.6445639
52.26242441
-1.061594424
2.073096025
18.72019804
4.461355396];

Ca_ICPMS=[50.20780558
29.32847553
30.58726816
15.12613601
44.29799218
25.3052753
36.78686626
11.64012701
29.86211038
22.88384123
9.026118468
42.00429766
12.51860598
31.87373761
14.17086612
15.31479355
14.9673741
10.4219056
33.68401543
217.0773773
24.66797458
72.53537008
NaN
67.74395723];

Ca_IC=[9.193394045
12.75295926
5.241160018
8.176690093
3.198273702
2.925579292
3.0925407
9.542272986
0.941998521
13.26204571
0.0
0.0
3.402806494
4.870255855
0.0
0.0
0.0
0.457906911
5.732847123
38.63357248
1.426012381
0.0
0.428660411
3.176945169];

%here I use Iron 56 #2
Fe_ICPMS=[1.818129615
0.48573106
0.267032402
-0.002882683
0.313840444
0.475815792
0.130169072
-0.059982667
0.111771655
0.1225724
0.192127284
0.011900007
0.476272347
0.181812835
-0.11882174
0.584223186
-0.059478212
-0.163733033
0.162635048
0.039601086
0.059624098
0.3219533
NaN
0.746521966];

Cu_ICPMS=[NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN
    NaN];

Mn_ICPMS=[0.147124806
0.155996338
0.112074848
0.07591207
0.046685551
0.139268749
0.031054386
0.096562566
0.013244369
0.080554366
-0.001325894
0.032769251
0.018506376
0.018018377
0.103657894
0.063284854
-0.00827875
-0.026956621
0.050712257
0.074446171
0.108178196
0.109604415
NaN
0.026266802];

Zn_ICPMS=[6.215177066
3.668614822
3.748210236
1.349813147
1.789770983
4.941436489
3.917523315
2.480657474
1.927294373
4.675331882
1.575017668
7.968292061
1.828430181
4.435794423
3.120875393
3.911389353
1.661078089
0.348278158
6.49832487
3.119447558
1.692612743
18.28942288
NaN
3.522751361];

corr_fac=[0.951408452;
0.955095282;
0.919181495;
0.945165499;
0.914686129;
0.884137248;
0.944656732;
0.936378737;
0.934724759;
0.923093201;
0.922575552;
0.928496044;
0.905534393;
0.953330621;
0.969371475;
0.90805451;
0.926424802;
0.869754385;
1.016352243;
1.131160081;
1.212143603;
1.204009519;
1.204009519;
1.269344449;
];
%from 3 PM on 1/15/2019 to 7 PM on 

sulfate=[122.3053368
119.581427
95.16869206
54.28990021
51.39409012
33.17538252
36.92755108
27.21141725
30.49778429
40.88238629
33.38203353
41.13351696
40.4982005
68.50338073
63.52028743
69.26507604
85.55363979
64.34941157
67.47442374
87.42170635
75.36373526
81.05593754
103.2527427
152.548987];

nitrate=[0;
0;
0;
14.48387097;
85.93548387;
-20.19354839;
95.70967742;
-1.35483871;
49.32258065;
149.3225806;
-36.51612903;
-24.87096774;
8.64516129;
76.19354839;
18.16129032;
26.41935484;
34.64516129;
23.51612903;
-3.838709677;
796;
121.1290323;
56.61290323;
104.9677419;
80.51612903;];

chloride=[-1.358325327
28.71852288
0.0
0.0
0.0
0.0
0.0
0.0
0.0
5.014507705
0.0
0.0
0.0
0.0
0.0
0.0
0.863021749
0.0
0.0
0.0
0.0
0.0
0.0
0.0];


ammonium=[-0.185937202
5.433419464
-0.958588116
6.441740984
NaN
1.898411976
-2.640907437
12.52301845
-4.451063983
14.94329853
NaN
NaN
-1.956278144
-2.053444273
-2.867552878
-3.461225823
NaN
NaN
-1.102167057
-3.092691397
-3.729613617
-4.350829169
-3.509488057
-4.054022196];

Sr=[0.105543097;
0.114008318;
0.164559537;
0.050051921;
0.059436772;
0.075929416;
0.114983146;
0.0897204;
0.118106638;
0.083026511;
0.060068091;
0.075020001;
0.057828412;
0.066717921;
0.052769005;
0.068294579;
0.063117663;
-0.003536025;
0.063405148;
0.10288277;
0.031724909;
0.051732255;
0.041376173;
-0.003533039];

%provided by ragen
%Jan *0.0172./0.672
%Feb *0.014./0.76266
sulfate_conc=sulfate.*0.0172./0.672;
nitrate_conc=nitrate.*0.0172./0.672;
ammonium_conc=ammonium.*0.0172./0.672;
chloride_conc=chloride.*0.0172./0.672;
K_ICPMS_conc=K_ICPMS.*0.0172./0.672;
Mg_ICPMS_conc=Mg_ICPMS.*0.0172./0.672;
Na_ICPMS_conc=Na_ICPMS.*0.0172./0.672;
Fe_ICPMS_conc=Fe_ICPMS.*0.0172./0.672;
Cu_ICPMS_conc=Cu_ICPMS.*0.0172./0.672;
Ca_ICPMS_conc=Ca_ICPMS.*0.0172./0.672;
Zn_ICPMS_conc=Zn_ICPMS.*0.0172./0.672;
Mn_ICPMS_conc=Mn_ICPMS.*0.0172./0.672;
Ca_IC_conc=Ca_IC.*0.0172./0.672;
K_IC_conc=K_IC.*0.0172./0.672;
Mg_IC_conc=Mg_IC.*0.0172./0.672;
Na_IC_conc=Na_IC.*0.0172./0.672;


doy=[(16/24):(1/24):(29/24) (31/24):(1/24):(40/24)];

doy=doy+julian('0128')+365;

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

subplot (4,5,1)
plot(doy-393,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5,2)
plot(doy-393, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4,5,3)
plot(doy-393, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,4)
plot(doy-393, NOa_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,5)
plot(doy-393, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4,5,6)
plot(doy-393, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,7)
plot(doy-393, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,8)
plot(doy-393, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,9)
plot(doy-393, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,10)
plot(doy-393, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 11)
plot(doy-393, K_ICPMS_conc, doy-393, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 12)
plot(doy-393,Mg_ICPMS_conc, doy-393, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 13)
plot(doy-393,Na_ICPMS_conc,doy-393,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 14)
plot(doy-393,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 15)
plot(doy-393,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 16)
plot(doy-393,chloride_conc)
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 17)
plot(doy-393,Ca_ICPMS_conc,doy-393,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 18)
plot(doy-393,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 19)
plot(doy-393,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 20)
plot(doy-393,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);



sgtitle('Jan 28-29');

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
scatter(pm25_new,SO2_new, 30,t3m_new,'filled'); grid;colorbar;title('Jan');ylabel('SO2');xlabel('PM2.5');

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
