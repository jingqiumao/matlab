% H1	17:07	18:07	29-Jan
% H2	18:07	19:09	
% H3	19:09	20:09	
% H4	20:09	21:09	
% H5	21:09	22:10	
% H6	22:10	23:10	
% H7	23:10	0:10	30-Jan
% H8	0:10	1:10	
% H9	1:10	2:11	
% H10	2:11	3:11	
% H11	3:11	4:11	
% H12	4:11	5:12	
% H13	5:12	6:12	
% H14	6:12	7:12	
% H15	7:12	8:12	
% H16	8:12	9:13	
% H17	9:13	10:13	
% H18	10:13	11:13	
% H19	11:13	12:15	
% H20	12:15	13:16	
% H21	13:16	14:16	
% H22	14:16	15:16	
% H23	15:16	16:16	
% H24	16:16	17:17	

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[%second day
4.152329159
36.07454255
190.9949289
5.181045101
10.40458123
6.478845769
8.461959318
10.42087332
3.103920434
6.540542848
-6.620480793
NaN
0.443302158
NaN
NaN
-9.281418467
4.681340506
14.89463734
14.18952998
20.01890909
6.929242837
4.963589075
32.5062429
85.92871978];

Na_IC=[7.712300881
21.59230004
31.59742628
10.1241036
15.01939997
12.1836307
6.132809648
7.306675106
6.200126001
4.218780751
6.37649251
4.377872234
4.37743444
5.168013387
1.723072431
3.365631424
8.47122385
239.4576255
8.194180139
13.24568487
11.69028962
8.556957546
9.386709076
38.04703325];

Mg_ICPMS=[
%second day
6.465709191
11.93473046
17.0781848
14.95833536
13.54981277
11.07352401
8.009330293
11.02366283
15.63045385
18.8610995
9.106081487
NaN
10.00829349
NaN
NaN
7.733865254
10.56672777
10.92451973
9.1399178
7.427829623
7.705232421
7.888714404
11.43088009
5.602788];

Mg_IC=[1.605294878
3.212314288
4.190950917
6.441685021
7.240902571
5.879524887
1.678646866
2.264914327
7.683246273
6.74255988
4.121462135
6.154553996
1.373226435
2.444579347
6.298041508
2.282585343
5.97680882
14.58653853
2.237749561
2.147624582
1.836419351
2.282747545
2.199193807
0.836552116];

K_ICPMS=[
%second day
10.54030309
52.46888254
550.66383
24.69984061
77.50496886
38.7957194
57.35198094
44.72669792
23.73440623
24.01401923
16.98341251
NaN
26.82377432
NaN
NaN
14.80081528
33.68068398
88.05835561
47.16206998
57.60101196
46.3045185
41.8757433
59.7158753
33.16961508];

K_IC=[6.014116052
30.02939406
97.85106688
13.30838206
42.94800645
20.174738
16.4399747
20.75725619
10.72705531
9.552054621
15.14686568
11.71110961
12.60271721
11.23415085
-7.447268985
8.157893865
18.86482897
651.4638474
22.44734307
22.36814149
26.65773708
20.55130705
24.42114079
13.18353007];

Ca_ICPMS=[
%second day
29.59910811
79.0393057
128.2174573
80.82974067
64.30628554
64.24583916
33.08785235
47.14130991
85.32713782
92.81083664
46.25075682
NaN
61.58501696
NaN
NaN
28.1157591
59.60673252
42.43430474
39.89222276
36.1855785
52.77855102
30.41963705
47.23748387
41.79561885];

Ca_IC=[0.0
4.806232219
3.183226203
12.07636469
7.392849442
4.811052191
0.155837193
1.652098907
4.459522398
5.347870683
2.244800935
7.488019413
0.0
0.166778053
6.420401978
0.0
4.669451848
20.07471809
0.0
0.0
0.721138733
0.0
0.0
0.0];

%here I use Iron 56 #2
Fe_ICPMS=[
%second day
0.361106227
0.928838969
0.709093509
0.140831906
0.656889425
2.274841143
0.114567766
1.531763154
0.940195168
1.492075366
0.180836742
NaN
0.882480719
NaN
NaN
1.176515512
0.450186835
0.274500129
0.619983747
0.695219344
-0.000919757
-0.086266172
2.48719516
0.560583911];

Cu_ICPMS=[
%second day
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
    NaN
    NaN];

Mn_ICPMS=[0.132531104
0.141889245
0.104681316
-0.037159735
0.089063773
0.078691546
-0.044297515
0.072511967
0.02880068
0.076495117
-0.009325297
NaN
0.008213766
NaN
NaN
0.075710339
0.042489711
0.127025595
0.07912207
0.075439007
0.027826292
0.038905927
0.105725476
0.146431038];

Zn_ICPMS=[
%second day
3.757584356
10.08879933
12.19902222
2.565191929
4.666857142
5.981307038
5.342322112
9.949052305
4.952589894
5.78054096
3.768644244
NaN
8.500451534
NaN
NaN
3.862203307
2.839148764
5.176360179
5.077794387
3.249388006
3.464099577
3.615203895
5.215115417
1.852205279];

corr_fac=[
%second day
1.290023232;
1.299510192;
1.32193171;
1.186840072;
1.242465822;
1.216260066;
1.149447587;
1.19653018;
1.208586065;
1.174235767;
1.183935826;
1.183935826;
1.235248982;
1.235248982;
1.235248982;
1.767033958;
1.12074172;
1.226075381;
1.541276949;
1.081131587;
1.708671894;
1.190863058;
1.564005079;
1.198465496];

sulfate=[
163.3798498
241.57444
111.900259
107.9944461
82.30342003
104.8076863
166.2847691
167.4043821
143.747077
166.6343715
170.1901823
216.6151439
85.39648178
18.00921355
60.02303513
72.63566043
87.97509063
120.0683967
39.08227321
55.06898436
49.69485453
28.52474649
36.32272362
33.42151503];

nitrate=[100.4477212
179.2766934
102.585959
49.62705086
196.605991
12.8822941
40.83679698
27.69152575
-2.756708162
0.284128142
24.22340943
10.2643841
-6.413033825
-8.246636077
0.0
0.0
-7.634784201
965.3923113
-9.865177128
38.58088008
78.13885659
9.434936641
-13.13548689
0.0];

chloride=[48.49588338
51.351914
171.5056822
147.4554894
46.36549202
96.35684751
40.40668593
48.92546397
138.689739
168.5408198
94.3975542
196.8133349
45.67806939
41.51958511
170.5849467
46.07446843
110.0616527
985.7865955
48.57419827
49.28067592
51.82149756
37.81735793
47.96125861
57.34048744];

ammonium=[0-3.525202513
2.19111714
0.749260184
NaN
NaN
0.293578607
NaN
0.0
-3.353133488
0.0
NaN
0.0
NaN
0.0
0.0
NaN
-3.314278938
-3.715812114
NaN
0.0
0.0
NaN
NaN
-3.376669732];

Sr=[0.069492865;
0.090348742;
0.195793941;
0.188653766;
0.08061592;
0.087178232;
0.112307883;
0.130835063;
0.142158877;
0.156526945;
0.069352863;
0.142346674;
0.071446926;
0.04310035;
0.142143543;
0.050012509;
0.122373771;
0.061024109;
0.058562441;
0.068826619;
0.04443909;
0.047585062;
0.0666629;
0.058952471];

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

doy=(17/24):(1/24):(40/24);

doy=doy+julian('0129')+365;

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
plot(doy-394,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5,2)
plot(doy-394, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4,5,3)
plot(doy-394, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,4)
plot(doy-394, NOa_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,5)
plot(doy-394, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4,5,6)
plot(doy-394, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,7)
plot(doy-394, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,8)
plot(doy-394, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,9)
plot(doy-394, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,10)
plot(doy-394, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 11)
plot(doy-394, K_ICPMS_conc, doy-394, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 12)
plot(doy-394,Mg_ICPMS_conc, doy-394, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 13)
plot(doy-394,Na_ICPMS_conc,doy-394,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 14)
plot(doy-394,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 15)
plot(doy-394,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 16)
plot(doy-394,chloride_conc)
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 17)
plot(doy-394,Ca_ICPMS_conc,doy-394,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 18)
plot(doy-394,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 19)
plot(doy-394,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 20)
plot(doy-394,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

sgtitle('Jan 29-30');

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
