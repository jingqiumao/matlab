% H1	14:50	15:50	15-Feb
% H2	15:50	16:51	
% H3	16:51	17:51	
% H4	17:51	18:51	
% H5	18:51	19:52	
% H6	19:52	20:32	
% H7	20:32	21:33	
% H8	21:33	22:33	
% H9	22:33	23:33	
% H10	23:33	0:33	16-Feb
% H11	0:33	1:34	
% H12	1:34	2:34	
% H13	2:34	3:34	
% H14	3:34	4:34	
% H15	4:34	5:35	
% H16	5:35	6:35	
% H17	6:35	7:35	
% H18	7:35	8:36	
% H19	8:36	9:36	
% H20	9:36	10:36	
% H21	10:36	11:36	
% H22	11:36	12:37	
% H23	12:37	13:47	
% H24	13:47	14:37		

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[37.71877304
42.3412425
49.22715566
42.10705058
23.6843013
47.17377852
47.07624859
35.79607379
33.67874877
72.79248391
138.4227933
49.4288173
62.30899791
56.21580564
36.40530285
48.62619257
54.78331242
43.2566409
38.68129755
32.99016088
47.83927418
36.40511126
32.44630127
NaN]; 

Na_IC=[47.09974168
9.776910108
14.50970582
14.07263584
13.93635233
-3.992254627
47.48974986
37.18138067
2.888942958
14.79557735
33.88679246
80.98950434
30.27744342
5.149365065
13.22128791
5.426734581
19.84098274
15.95923072
15.75266548
18.52604415
13.37308541
25.05123754
28.48352546
24.97276832];

Mg_ICPMS=[9.029253354
9.614386269
13.43126229
13.16211615
7.995849989
14.47770518
14.63811209
10.14956496
10.46511397
11.91593222
18.57747946
15.120276
11.09005918
17.51114115
11.06558882
15.37976652
14.48812194
12.24022922
12.59882423
11.72986633
13.56774793
9.2158538
8.330207521
NaN];

Mg_IC=[5.916213629
0.855756685
1.792971354
3.915388993
3.797298151
-0.053064882
5.09216943
5.969599159
5.286846246
7.725611898
7.300930357
6.491316211
4.927241921
4.375632234
3.780046224
-0.628340657
8.289935454
2.536334821
1.967739275
12.27955392
2.124231932
1.948774712
1.726505705
1.362741815];

K_ICPMS=[48.26554417
55.26675155
59.80770626
62.30488943
34.69296366
65.86659229
67.70522771
53.14003108
51.74110274
61.45746582
83.19921229
75.7451623
65.49853517
99.9162508
64.42155823
81.14442141
75.95286321
60.29056589
64.81751122
91.14360172
80.31029699
53.84109133
52.28852233
NaN];

K_IC = [110.0853253
21.12644075
31.39325854
42.68725606
32.97589151
8.167998246
152.1658531
102.685862
13.35210216
48.53260214
37.35038183
39.85562058
89.41608888
18.19052591
55.01584666
37.87615595
58.04461461
58.84822732
72.36433999
55.66702862
82.36121404
77.65079595
104.1973577
86.54527931];

Ca_ICPMS=[100.0075811
116.554505
114.9134173
137.7426104
108.7417211
207.7097419
164.1312816
104.6361376
105.2995546
148.4979334
192.7116268
190.2717292
113.8802133
175.0371115
123.1611549
161.4721363
158.0333019
193.5408309
130.2212741
39.56394789
142.3800295
96.82910869
86.40261452
NaN];

Ca_IC=[60.70852937
1.182418093
12.30831248
13.15909837
22.64187454
0.0
36.62571327
41.97286065
6.17909229
22.2584942
24.53183299
27.96593226
42.42832056
-4.757102308
17.45466504
0.0
99.49979765
15.82656346
-7.442779112
44.3268656
0.0
12.46701087
2.577265958
-5.611570304];

Mn_ICPMS=[0.125800123
0.144301683
0.223509057
0.20887018
0.135720395
0.220828963
0.186344491
0.130641937
0.15337703
0.15878276
0.162675342
0.16611675
0.167223415
0.223890232
0.165649484
0.332737296
0.185167153
0.137282429
0.174774766
0.15215429
0.182172256
0.116525624
0.146740013
NaN];

%here I use Iron 56 #1
Fe_ICPMS=[0.488278169
0.15994313
2.560947833
1.375149767
0.424738837
2.02030699
0.971246121
1.042312176
0.838733201
0.991186991
0.859914576
0.330468862
1.166870993
1.376369846
1.313027421
2.269045209
1.637343926
0.315427217
0.823173476
0.644047498
0.64667199
0.156325485
0.552804255
NaN];

Cu_ICPMS=[0.884538119
0.838297513
1.343593637
1.493980878
0.802902763
1.577415003
1.38437886
1.021427663
1.294905761
0.943185387
1.048660427
1.143670282
1.347981857
1.634406797
1.503622887
1.206538673
1.595943694
1.158366623
1.37671043
0.475253866
1.23013859
0.945857395
0.599109039
NaN];

Zn_ICPMS=[8.571138255
8.145732103
9.813614087
10.12577213
15.23011757
25.94308254
12.93222251
9.821190204
12.65838403
13.69872655
11.51257552
13.76489474
14.66813617
15.25472702
11.69783304
11.10889084
13.25870162
19.61419087
11.5748263
8.215237411
9.217090505
7.905107562
7.635266545
NaN];

corr_fac=[1.155421716;
1.117752056;
1.139720542;
1.113575965;
1.152617272;
1.312785178;
1.35353914;
1.400554506;
1.434529393;
1.470817988;
1.493550765;
1.476426518;
1.503891201;
1.526494488;
1.518037695;
1.514033394;
1.488089081;
1.485200108;
1.455317965;
1.366422946;
1.39130077;
1.389327337;
1.325422106;
NaN;];

sulfate=[91.16230895
75.73888285
70.04141058
92.20294376
99.93256576
123.1765349
145.8825556
118.4107175
109.9116924
101.3733853
96.34859405
114.323495
110.4743862
83.89653086
89.84015651
83.11338189
78.3774011
104.6456879
131.5437127
146.9344763
89.01839865
52.32497
45.88675894
45.8029842];

nitrate=[320.0118294
106.5006791
98.50431622
56.69353411
46.8591457
19.06973455
109.6233942
111.8197079
40.44299313
19.37670468
26.29392265
37.50467723
85.76050076
12.62276974
52.07461924
22.06713795
89.27037128
23.90044014
0.036242347
35.84965241
46.37053892
35.26647137
40.89354329
NaN];

chloride=[281.4014479
156.0483322
188.9860531
237.3854303
250.6796024
102.337966
329.0904305
346.5689665
199.9066311
200.5874763
276.4951626
443.5131764
336.4706849
200.5782577
335.2471374
206.5729007
248.7613977
287.2055505
187.9758112
258.4543956
302.511917
323.0614894
250.141165
256.6991449];    

ammonium=[-0.336788446
-4.403965807
-4.378505015
-4.317833091
-4.480992095
-4.235099536
-4.904737677
-4.709567331
8.066908292
23.83441675
18.90103924
6.05509797
-5.303455524
5.243739733
-5.234107628
-5.874632425
-2.251243186
-5.651177497
-5.783497539
38.01017838
-4.921849196
-5.560610695
-5.176060484
-4.938789777];

Sr=[-0.962309529;
-0.902756679;
-0.914188031;
-0.940426559;
-0.952387985;
-0.89186076;
-0.926415427;
-0.985950737;
-0.877542637;
-0.896395724;
-0.893280145;
-0.972431953;
-1.231569814;
-0.894435232;
-0.91649331;
-0.876240884;
-0.921371162;
-0.901599034;
-0.897013928;
-0.894504807;
-0.833589144;
-0.919625521;
-0.872215827;
-0.895331492;];

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

doy=doy+julian('0215')+365;

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
plot(doy-411,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-411, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-411, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-411, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-411, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-411, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-411, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-411, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-411, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-411, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-411, K_ICPMS_conc, doy-411, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-411,Mg_ICPMS_conc, doy-411, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-411,Na_ICPMS_conc,doy-411,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-411,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-411,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-411,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-411,Ca_ICPMS_conc,doy-411,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-411,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-411,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-411,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-411,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-411,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


sgtitle('Feb 15-16');

figure
cation=(fill_NaN(Na_IC)./23+fill_NaN(Mg_IC.*2)./24+ fill_NaN(K_IC)./39+ fill_NaN(Ca_IC.*2)./40 +fill_NaN(ammonium./18));
anion=sulfate.*2./96+nitrate./62 + chloride./35;
scatter(anion, cation,140, sulfate, 'filled');grid;colorbar;
ylim([0 20])
hold on;
plot(0:1:10,0:1:10,'--');
plot(0:1:10,0:2:20,'--');
plot(0:1:10,0:0.5:5,'--');

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
