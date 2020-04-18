% H1	13:37	14:37	5-Feb
% H2	14:37	15:38	
% H3	15:38	16:38	
% H4	16:38	17:38	
% H5	17:38	18:39	
% H6	18:39	19:39	
% H7	19:39	20:39	
% H8	20:39	21:39	
% H9	21:39	22:40	
% H10	22:40	23:40	
% H11	23:40	0:40	6-Feb
% H12	0:40	1:41	
% H13	1:41	2:41	
% H14	2:41	3:41	
% H15	3:41	4:41	
% H16	4:41	5:42	
% H17	5:42	6:42	
% H18	6:42	7:42	
% H19	7:42	8:42	
% H20	8:44	9:44	
% H21	9:44	10:44	
% H22	10:44	11:45	
% H23	11:45	12:45	
% H24	12:45	13:45	

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[233.914568
41.4201601
62.38768021
211.1695734
56.76628131
72.47573714
58.49006065
23.67112121
39.60565178
39.2556568
25.62026321
22.53281122
33.35697934
38.76194239
35.85000535
16.92345024
33.64075754
21.38364813
29.36190272
36.95131956
42.98945214
39.52825695
69.48780698
45.34457747];

Na_IC=[4.508977449
233.7137839
17.39772316
62.78621528
9.255224429
-2.298636483
4.264918272
-3.032396571
8.839266634
3.057231292
-3.777768401
-7.670084535
-1.060928589
30.95579207
329.729732
-6.470611549
5.348430373
3.684857546
-11.35541138
-17.07159668
-6.380694394
-5.962159391
13.64475245
174.7103074];

Mg_ICPMS=[13.62823301
10.41058286
11.58471562
14.26841048
14.5231153
11.20010485
13.31040215
10.96600386
9.960171256
5.694819662
9.875608091
6.671258506
10.90785248
13.23948238
9.200713074
8.057165417
11.43691011
8.424669047
19.49734544
15.39068934
10.48154338
15.0103325
23.91003149
9.678457531];

Mg_IC=[7.459794864
19.34413699
13.85490848
-1.345813193
2.919095629
-5.157101595
-2.646353355
0.143635421
-0.09999057
5.346894317
10.24193496
-4.004460532
-5.013641567
-4.243910942
17.73144154
5.506328972
12.41757565
12.29138017
-0.162134469
-8.585482983
-5.185258723
-3.797605173
0.667238434
3.611458197];

K_ICPMS=[645.5521476
101.4111703
147.8588666
510.29933
137.4377555
169.4862533
147.6602536
70.05802345
89.92651062
63.51481856
62.09755975
62.64942386
99.01932368
80.52308009
52.80028518
50.30256286
94.35151456
67.22291548
91.13133678
96.39197531
81.66107981
113.3029753
151.6215362
112.1901029];

K_IC=[29.30509714
528.4935159
44.40387572
124.8613108
55.54610455
16.29048469
39.96282464
21.9942054
41.11758866
4.322773961
6.278260762
-4.626962814
16.42306684
117.4213489
728.9830335
8.541845803
23.21665395
27.65664215
14.45160476
1.205059661
6.602998661
27.14319115
45.43464178
293.3558941];

Ca_ICPMS=[70.78860906
27.54599148
48.44197065
61.70164055
44.14631987
62.45687525
64.31433178
4.072062412
9.326326124
15.38905995
7.00270386
0.364452284
19.18611656
56.30451288
5.29293748
-4.155551681
57.82613605
0.983234988
226.7006223
68.93045529
37.77327709
75.36324798
152.4364413
47.09782172];

Ca_IC=[1.32935242
13.3246259
3.377620741
9.177209813
-2.652908522
-11.53851209
-12.46205911
-13.61637001
-11.76940685
6.884583641
-1.227327741
37.9808503
-9.905172463
-11.85591065
12.37250075
-0.547477187
7.434326116
5.408694564
12.02788822
-12.65148961
-14.22901549
-8.739179857
0.870201245
-0.78696603];

Mn_ICPMS=[0.119051426
0.096946808
0.11679743
0.180761934
0.127685381
0.115835458
0.279115279
0.085022883
0.057929684
0.062171112
0.061061648
0.056220028
0.096247486
0.095102986
0.077023617
0.057012836
0.332437149
0.051687414
0.22174996
0.344429316
0.212989958
0.147024397
0.249724566
0.123324014];

%here I use Iron 56 #1
Fe_ICPMS=[5.950644692
0.012618798
1.440140033
0.95889553
1.227639743
1.018729201
0.55544488
-0.089434927
0.307471091
0.471770264
1.51874986
0.096198275
0.323904968
2.131405357
1.182217349
0.235032025
0.532521996
-0.005052625
0.867390055
0.654618725
29.6747995
0.940559362
1.761194046
0.379639627];

Cu_ICPMS=[0.880172419
0.138410752
0.374460567
0.564251211
0.306363771
0.267251799
0.239864247
0.116563017
0.132175629
0.1804662
0.173333524
0.098712669
0.15079584
0.277456805
0.069486708
0.026984659
0.140812672
0.085638289
0.02648781
0.134900973
0.114323799
0.241507583
0.69596273
0.142684296];

Zn_ICPMS=[9.046902661
1.231177022
5.269252509
5.193050248
3.936850262
6.570415885
5.650287459
1.219268697
2.106821347
2.783730288
4.032047421
1.858928972
2.104686716
10.96570051
6.904358676
1.84712156
8.670678802
1.857284938
5.744122665
3.533281143
3.617084113
13.00696485
15.92678157
3.771502672];

corr_fac=[1.452333414;
1.845970015;
1.267548071;
1.320313196;
1.286001391;
1.319881298;
1.266739002;
1.305982923;
1.320279617;
1.293096874;
1.290204569;
1.295986584;
1.289000319;
1.399815181;
1.456404296;
1.365634094;
1.328323069;
1.347749096;
1.356668308;
1.341483625;
1.394658573;
1.543547692;
1.304206475;
1.263570319];
%from 3 PM on 1/15/2019 to 7 PM on 


sulfate=[29.71282677
62.72254615
33.46704726
63.25482615
67.48073885
58.98181997
68.38797307
76.72720305
70.38210675
72.78481073
52.16009986
71.1695346
105.0548594
161.0422269
282.0566093
142.6764541
103.4701348
143.7252228
261.1487676
163.9550581
150.9382534
170.3332722
102.7680322
73.37549357];

nitrate=[45.41513805
584.3751286
54.82243898
333.9963353
280.8241112
83.23729898
26.45880682
65.02026786
121.8100344
82.07160326
35.29653777
207.2615758
127.8734931
123.9769202
1056.232868
41.23517103
53.48340174
32.34524673
27.46109039
84.63824257
111.0167839
162.4240669
119.2967585
398.6768161];

chloride=[138.0434783;
894.5072464;
261.2898551;
355.8695652;
285.0144928;
245.942029;
141.2318841;
183.6956522;
232.9855072;
124.4927536;
121.0724638;
180.4347826;
191.6521739;
261.1449275;
836.3188406;
128.6231884;
144.4347826;
164.057971;
160.6956522;
217.3623188;
184.0724638;
228.115942;
400.057971;
520.5797101];

ammonium=[75.24093312
87.9866614
102.145964
54.04426029
67.78976159
18.80136928
11.22202622
33.10455601
12.81594056
47.29675408
70.15407229
16.39134859
25.06661247
48.61171947
95.5958833
43.3078267
44.13858124
45.6285107
-6.665616174
12.36355295
21.11242079
37.21748429
NaN
0.0];

Sr=[-0.924941475;
-0.761059129;
-0.821573908;
-0.836073165;
-0.835571408;
-0.816928653;
-0.831211355;
-0.797715819;
-0.803747423;
-0.797546343;
-0.792909881;
-0.785596196;
-0.810401714;
-0.818711891;
-0.801001168;
-0.791328875;
-0.817108794;
-0.796302614;
-0.926745069;
-0.847648457;
-0.818687955;
-0.914878443;
-0.943895072;
-0.819002146;];

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


doy=(14/24):(1/24):(37/24);

doy=doy+julian('0205')+365;

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
plot(doy-401,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-401, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-401, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-401, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-401, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-401, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-401, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-401, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-401, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-401, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-401, K_ICPMS_conc, doy-401, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-401,Mg_ICPMS_conc, doy-401, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-401,Na_ICPMS_conc,doy-401,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-401,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-401,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-401,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-401,Ca_ICPMS_conc,doy-401,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-401,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-401,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-401,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-401,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-401,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


sgtitle('Feb 5-6');

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
