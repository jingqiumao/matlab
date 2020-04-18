% H1	12:52	13:52	24-Feb
% H2	13:52	14:53	
% H3	14:53	15:53	
% H4	15:53	16:53	
% H5	16:53	17:53	
% H6	17:53	18:54	
% H7	18:54	19:54	
% H8	19:54	20:54	
% H9	20:54	21:55	
% H10	21:55	22:55	
% H11	22:55	23:55	
% H12	23:55	0:55	25-Feb
% H13	0:55	1:56	
% H14	1:56	2:56	
% H15	2:56	3:56	
% H16	3:56	4:57	
% H17	4:57	5:57	
% H18	5:57	6:57	
% H19	6:57	7:57	
% H20	7:57	9:05	
% H21	9:05	10:06	
% H22	10:06	11:06	
% H23	11:06	12:06	
% H24	12:06	13:06	
% H25	13:06	14:07	
% H26	14:07	15:07	ICPMS only did to H25.

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[33.48301262
10.23539447
21.18686833
17.33567062
40.12116958
17.28098535
26.44255035
13.30960262
3.177776991
13.11108743
61.91395923
13.92295498
20.78003208
88.73389258
20.01168753
10.95160654
19.00219045
26.36283072
18.58832243
15.22537147
22.6598646
57.46135265
31.56812965
3.649175368
4.805152689];

Na_IC=[24.2585039
2.732212556
-19.32225939
2.215450307
41.34514305
48.52827676
17.14511029
26.03685231
18.09620035
7.455368618
-13.90593614
47.39295301
1.958949143
1.281448604
93.61682603
48.06403833
-17.53268359
-5.254072303
5.824180636
-9.567193252
-15.43631466
2.251442404
35.50002605
-16.14635093
-19.25122858];

Mg_ICPMS=[7.213062172
2.433817311
2.819270807
4.128655168
11.8605068
5.010066874
6.315018673
3.628817447
1.436016044
3.778290182
9.92994033
3.859463355
7.383974506
16.27914095
2.625804261
2.465645679
3.411202988
7.008568244
2.467885131
4.289459962
4.925798522
3.84090429
3.10008843
1.087036134
2.147650098];

Mg_IC=[4.608860566
3.335366756
-0.317134208
0.227607382
0.720108241
4.938748095
3.875461712
-1.013863982
3.187348616
1.876393032
-2.669017282
20.93859881
32.10786708
19.51297295
45.96413048
33.21230338
3.142062858
7.895603331
25.47012263
3.523561119
13.19073777
19.64353707
28.8312137
5.52254271
-3.444927644];


K_ICPMS=[71.78823484
15.27980152
28.95715669
30.59464725
57.60650985
57.64104529
34.01060826
17.17572521
18.12257657
20.2027048
44.26885898
20.64706593
37.28598846
59.23277369
16.24231762
14.03752582
51.78284941
33.19432454
19.70728252
23.00719332
34.17956247
32.40129804
19.4469129
17.73801098
19.23656741];

K_IC=[92.68805348
25.25584161
-21.00921966
29.14308662
158.2542478
133.365702
66.54484329
90.45631602
92.10914079
82.11248753
-20.07096599
17.85783739
1.444785823
12.51279533
125.5353046
153.7473182
-23.04347456
12.15231378
2.590319207
-19.71156534
-17.70433265
7.882030175
5.212005232
-18.45517135
-15.89297994];

Ca_ICPMS=[56.89734924
24.03070791
31.53438662
36.57877805
124.3843885
-3.792362025
80.37546074
28.51698536
NaN
42.00588422
131.8271926
48.88559273
63.13519086
97.58943059
26.58561135
17.36576993
17.92852521
91.52841591
17.90463613
41.56787159
57.23864936
36.30579227
26.20991731
NaN
0.621554602];

Ca_IC=[0.0
0.0
0.0
0.0
0.0
33.36952914
0.0
0.0
0.0
0.0
0.0
83.2646244
23.34124108
18.97674841
48.03172144
16.31553638
0.0
0.0
13.53070062
0.0
0.0
-8.228987267
10.79488461
0.0
0.0];

Mn_ICPMS=[0.079582848
0.030829583
0.047977751
0.039529244
0.140144869
0.018968227
0.049285341
0.03338517
0.019316279
0.033957437
0.109364455
0.074514208
0.104506086
0.436253645
0.034387775
0.061709321
0.026364396
0.068986719
0.038168811
0.046436265
0.068881933
0.039927568
0.057697316
0.017628244
0.044527671];

%here I use Iron 56 #1
Fe_ICPMS=[-0.059203166
-0.147670481
0.191190219
-0.25500663
0.667954869
-0.223034131
-0.115632089
-0.087361621
NaN
0.054673809
1.794076448
0.396259337
0.459969737
1.344144112
-0.161175735
-0.077150529
-0.298910184
-0.139935732
-0.112270175
0.058851882
0.294066855
-0.166191386
1.264544072
0.321471567
0.596337069];

Cu_ICPMS=[0.441600988
0.279023465
0.259366197
0.300512649
0.612622347
-0.032438821
0.424157662
0.151750865
-0.146560469
0.29845129
0.772304745
0.326400508
0.633673047
1.800993563
0.222273095
0.280717471
-0.022795242
0.178177993
0.172475117
0.31725791
0.475088395
0.325059008
0.188871198
-0.151490556
-0.157999639];

Zn_ICPMS=[7.487019015
3.114181398
3.781435452
2.622401937
6.330121858
1.082332296
3.07589524
2.156930475
2.4138248
2.919462635
7.803113122
2.40904798
3.359825714
7.85876739
2.52001936
12.76921382
1.881627748
3.422705245
1.912936705
3.190267302
3.847971558
2.863135028
4.431513321
0.073670049
0.117094307];

corr_fac=[1.115308212;
1.143774868;
1.122577292;
1.115577723;
1.075379025;
1.001566455;
1.050381853;
1.033757084;
1.036537445;
1.04342484;
1.063870038;
1.060415773;
1.064783854;
1.057574876;
1.062836877;
1.071830913;
1.02238697;
1.079982019;
1.087609647;
1.096390591;
1.070031399;
1.034174715;
0.998761711;
1.033202467;
1.079181876];% the last correction factor is weird.


sulfate=[46.02462698
16.89418596
3.051190739
12.15515247
30.67383417
26.49593799
14.91213989
9.45177081
13.64408564
15.30333119
1.56494589
13.71769813
1.409182063
6.057121776
81.37753986
23.09197777
14.57495202
2.122485989
5.16203026
5.958361238
6.14322935
7.837887251
7.572354756
2.426769606
0.254166948];

nitrate=[298.2652191
115.0687936
73.34152766
145.5661892
168.5928189
183.2969082
213.7080975
134.794179
110.2810357
131.3086881
96.87589115
494.0661454
78.29903789
90.83929196
225.2040568
175.1055855
75.54322278
100.71619
119.8730337
134.9549607
73.91707696
146.1500882
103.5958214
116.2742898
75.8428019];

chloride=[285.3944767
267.4478467
49.73372868
172.1851595
238.9331952
481.2615393
255.0288121
147.9009162
140.1199223
57.19148176
76.46726252
301.2109118
110.3214466
197.5704063
223.0449631
252.1566187
61.42402909
176.1151011
231.488369
107.9365061
109.2414218
160.4692581
233.9353182
72.07201531
-13.8894591] %till H25

chloride(chloride<0)=0;

ammonium=[-2.68811474
-2.108087336
-2.892674252
-3.785941434
-3.714622974
-1.178757449
14.33008735
-3.077844559
-2.151650285
-3.212935505
-2.887236314
23.76381719
56.20172545
26.92222468
67.80075211
60.2983647
-1.648835224
22.11142659
47.47170235
-2.480933024
-0.816731196
31.08846955
44.73458468
-1.403771069
-3.714622974];

Sr=[-0.929867647;
-0.848662911;
-0.808934261;
-0.817545772;
-0.823626947;
-0.898027035;
-0.798472774;
-0.880191639;
-0.815883028;
-0.786406847;
-0.839797205;
-0.897460725;
-0.838610549;
-0.846296213;
-0.969293027;
-0.811323388;
-0.806468335;
-0.795945078;
-0.862189223;
-0.808333307;
-0.824963891;
-0.834954238;
-0.82821564;
-0.829128099;
-0.782029474];

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

doy=(13/24):(1/24):(37/24);

doy=doy+julian('0224')+365;

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
plot(doy-420,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-420, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-420, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-420, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-420, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-420, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-420, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-420, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-420, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-420, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-420, K_ICPMS_conc, doy-420, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-420,Mg_ICPMS_conc, doy-420, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-420,Na_ICPMS_conc,doy-420,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-420,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-420,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-420,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-420,Ca_ICPMS_conc,doy-420,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-420,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-420,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-420,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-420,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-420,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);
sgtitle('Feb 21-22');


sgtitle('Feb 24-25');

figure
cation=(fill_NaN(Na_IC)./23+fill_NaN(Mg_IC.*2)./24+ fill_NaN(K_IC)./39+ fill_NaN(Ca_IC.*2)./40 +fill_NaN(ammonium./18));
anion=sulfate.*2./96+nitrate./62 + chloride./35;
anion=sulfate.*2./96+nitrate./62 ;
scatter(anion, cation,140, sulfate, 'filled');grid;colorbar;
ylim([0 20])
hold on;
plot(0:1:10,0:1:10,'--');
plot(0:1:10,0:2:20,'--');
plot(0:1:10,0:0.5:5,'--');

figure
scatter(pm25_new,sulfate_conc.*0.017./0.672, 40,CO_new,'filled'); grid;colorbar;caxis([0 1.5]); title('Feb 24');ylabel('sulfate');xlabel('PM2.5');

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