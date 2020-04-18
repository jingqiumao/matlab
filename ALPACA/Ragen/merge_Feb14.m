% H1	14:40	15:40	14-Feb
% H2	15:40	16:41	
% H3	16:41	17:41	
% H4	17:41	18:41	
% H5	18:41	19:41	
% H6	19:41	20:42	
% H7	20:42	21:42	
% H8	21:42	22:42	
% H9	22:42	23:43	
% H10	23:43	0:43	15-Feb
% H11	0:43	1:43	
% H12	1:43	2:43	
% H13	2:43	3:44	
% H14	3:44	4:44	
% H15	4:44	5:44	
% H16	5:44	6:45	
% H17	6:45	7:45	
% H18	7:45	8:45	
% H19	8:45	9:45	
% H20	9:48	10:48	
% H21	10:48	11:49	
% H22	11:49	12:50	
% H23	12:50	13:50	
% H24	13:50	14:50	

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[50.26944585
91.65780109
66.89373721
41.21538233
85.47770823
89.65625442
60.40844032
71.97115495
53.18089241
61.47067167
52.26674333
89.9419391
66.66418153
43.50186394
73.84944582
75.26058491
67.4048517
57.32071767
55.65460336
64.97260637
75.25790084
71.39780207
61.14944503
NaN]; %H24 is problematic

Na_IC=[25.69541082
17.61555797
25.06714275
4.555425303
53.25550967
49.32614229
23.19008788
32.30705675
13.9438061
22.26725481
36.75384505
46.53132751
25.27362609
-1.243774373
49.81782503
20.76439995
39.25348888
47.23270301
33.69267047
99.23903816
40.94719266
53.26234582
75.46924915
42.82770325];

Mg_ICPMS=[18.18935691
23.48054804
23.27024309
15.85257994
28.2399028
23.23796264
21.55003988
22.68091002
20.23973229
22.94193661
20.68509824
27.69341561
25.8431225
18.43748703
28.24788692
17.70329289
21.32259867
18.31825192
18.20841266
20.35396427
23.7688079
21.65559501
16.17781846
NaN];

Mg_IC=[6.265263141
4.802909876
3.830749982
-1.81005648
19.91800644
15.92802743
15.20515677
15.72144269
10.91081755
17.56586856
20.98954236
13.49084996
16.56153958
-2.766678835
10.95835173
11.3164763
17.29798467
15.2736717
6.374759488
6.868686587
-0.888987253
4.774493735
9.733380774
14.65080206];

K_ICPMS=[64.41870261
95.59856086
86.24103755
47.18991504
104.978111
93.35773564
90.99957102
93.30563067
74.89892324
93.61920022
83.48908838
116.4985395
104.0535603
74.34454831
121.7602408
171.0353603
107.8911121
89.48867285
86.31174553
98.30982683
126.5939747
108.4827339
101.9751759
NaN];

K_IC = [35.51704397
30.91590551
40.75728711
3.112152961
74.06161561
48.0762992
48.25127044
58.59524576
30.0127269
46.63328872
64.80176788
62.31966603
49.30816551
24.22992502
114.1363072
104.2865714
60.2966518
120.531794
84.52988483
295.1099107
144.0628372
166.8946706
196.1033388
95.2601244];

Ca_ICPMS=[132.4357408
612.620166
202.0705116
115.7850317
254.0832821
221.9151847
173.3918064
200.7252206
173.8913345
198.7682552
167.2806503
243.8265688
226.3347216
159.0182471
242.7589238
139.1403183
199.6005026
167.7683161
205.5405085
207.1868007
219.6277262
222.9859507
174.1652405
NaN];

Ca_IC=[138.0792461
168.8297175
196.8308172
85.27519428
275.3071028
180.6276301
205.0186762
243.149139
206.5830379
256.947506
271.2641886
353.5193664
268.9059425
152.1526759
265.3867252
178.3264191
209.6138787
206.3600709
174.3371708
238.5743017
174.9645488
224.7103351
231.4694212
215.6851661];

Mn_ICPMS=[0.20751208
0.257708276
0.243460257
0.217003536
0.319439562
0.301956791
0.291215915
0.241136016
0.22755424
0.285667547
0.253003423
0.307749173
0.30553647
0.245606665
0.398607283
0.199316931
0.282629595
0.243717633
0.260186101
0.27343386
0.348501065
0.338694118
0.266635769
NaN];

%here I use Iron 56 #1
Fe_ICPMS=[0.899248871
1.54853718
1.718360701
1.013923992
1.94009161
2.376389391
1.710688538
1.936839754
1.600944354
2.596559707
2.018644697
1.894314785
1.499208226
1.60210179
3.903563335
0.304557949
1.137958528
1.069942133
1.04795021
1.409163012
2.822363585
4.17358099
2.128200773
NaN];

Cu_ICPMS=[1.203118768
1.617663076
1.61723158
1.256084636
1.856436752
1.801168041
1.873253745
1.49838941
1.637111482
1.800269183
1.453368357
2.149420577
1.790008824
1.502172707
2.30621585
0.560880189
1.485990797
1.628045507
1.624498462
1.40236763
2.161214838
2.23020148
2.134469557
NaN];

Zn_ICPMS=[8.985031983
95.04521774
11.81846157
9.365941895
14.77376094
13.10436699
12.07955799
16.90920178
12.8897082
13.55904286
9.622431329
12.22698286
12.81676895
10.57575267
18.21229717
17.55039434
14.03187108
13.30689824
19.152089
16.74579445
15.27364004
15.55007039
15.23576223
NaN];

corr_fac=[1.343927732;
1.300456703;
1.304186148;
1.354937484;
1.347468114;
1.376608087;
1.390158185;
1.389956407;
1.420734897;
1.438659444;
1.48561063;
1.497094855;
1.489990014;
1.509915462;
1.519334594;
1.415333047;
1.52723992;
1.566276046;
1.649820093;
1.770713154;
1.813916328;
1.482202298;
1.320732528;
1;];

sulfate=[39.52795128
53.26629653
60.56769642
78.87480346
133.4759857
138.2380282
132.2438806
123.8244725
127.4584599
123.132125
179.8898909
210.9889324
193.8816586
305.430977
395.0733923
269.368933
164.9587327
112.2878613
276.6951534
274.1727646
229.3790711
253.1484115
160.7119031
145.4319287];

nitrate=[14.03951738
16.82934601
7.665148322
NaN
210.0819788
10.348803
40.60035282
37.44215031
6.655078704
29.24073976
19.79792549
29.48723463
29.22040847
31.59091843
139.4994367
90.34994998
87.55566564
58.86888595
87.376089
174.9727001
155.1716675
211.0914761
162.0903335
250.9245731];

chloride=[276.3573012
291.8426503
409.2431258
217.6628304
529.145453
394.7498534
286.1716847
372.2191892
335.465094
368.1155678
387.0326954
511.5537601
553.7710788
456.543481
551.6388194
539.4362737
479.0286509
438.0996331
439.8641417
503.8890073
483.6764312
562.8533256
456.8766612
294.935115];    

ammonium=[0.0
0.0
0.0
0.0
-2.80513677
-1.278945686
28.91652172
30.1294639
15.90704633
37.65646867
60.79721495
0.0
14.62406817
0.0
0.0
0.0
5.81372445
0.0
0.0
0.0
0.0
0.0
0.0
1.512138684];

Sr=[-0.877177455;
-0.977001943;
-0.979729542;
-1.107047893;
-1.033211483;
-0.910936698;
-0.895103741;
-0.908719838;
-0.89788201;
-0.906436077;
-0.888840001;
-0.922586047;
-0.927739851;
-0.989500762;
-1.265069766;
-0.995402822;
-0.9415378;
-0.900957931;
NaN;
-0.921639745;
-0.913398441;
-0.913169631;
-0.941319913;
-0.925538716;];

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

doy=doy+julian('0214')+365;

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
plot(doy-410,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-410, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-410, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-410, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-410, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-410, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-410, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-410, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-410, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-410, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-410, K_ICPMS_conc, doy-410, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-410,Mg_ICPMS_conc, doy-410, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-410,Na_ICPMS_conc,doy-410,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-410,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-410,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-410,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-410,Ca_ICPMS_conc,doy-410,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-410,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-410,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-410,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-410,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-410,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);
sgtitle('Feb 21-22');



sgtitle('Feb 14-15');

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
