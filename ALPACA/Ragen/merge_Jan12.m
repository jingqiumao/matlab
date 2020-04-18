% H1	8:03	9:03	12-Jan
% H2	9:03	10:03	
% H3	10:03	11:04	
% H4	11:04	12:04	
% H5	12:05	13:05	
% H6	13:05	14:06	
% H7	14:06	15:06	
% H8	15:08	16:08	
% H9	16:08	17:08	
% H10	17:08	18:08	
% H11	18:08	19:09	
% H12	19:09	20:09	
% H13	20:09	21:09	
% H14	21:09	22:09	
% H15	22:09	23:10	
% H16	23:10	0:10	13-Jan
% H17	0:10	1:10	
% H18	1:10	2:11	
% H19	2:11	3:11	
% H20	3:11	4:11	
% H21	4:11	5:11	
% H22	5:11	6:12	
% H23	6:12	7:12	
% H24	7:12	8:12	
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);


Na_ICPMS=[14.28171696
15.12962972
10.44778412
49.70751693
30.6153715
50.89744614
25.94442048
45.67873002
48.2765172
149.148236
10.71764737
12.49731536
22.38807589
14.06792782
13.17511731
0.978789103
4.831227137
5.830566378
26.67536314
6.103426223
2.404642941
8.476834324
82.66263475
15.21620302];

Na_IC=[5.301812775;
7.219040347;
6.581601814;
40.09507659;
14.81876364;
42.31401162;
10.97167338;
26.48840157;
27.51396063;
84.07637507;
1.961933545;
7.400345623;
7.466040794;
6.614689403;
5.221104184;
-0.564878908;
1.372778565;
0.268431542;
10.9918232;
0.890363412;
-0.953412847;
3.451028212;
54.75710091;
0.895546968;];



Mg_ICPMS=[4.620400733
4.623321265
3.337900089
8.005870932
10.97038691
13.18622643
6.128854048
10.58445784
13.13158249
2.620631762
2.468013365
1.603377428
4.229017989
3.843486388
5.278980954
0.414866865
3.04928812
1.122487069
6.266282246
1.558754003
0.424532715
1.188262258
3.398167994
1.278780543];

Mg_IC=[2.968545949;
3.76600743;
1.401226037;
1.277609666;
6.034138052;
7.883528539;
2.988987011;
5.856226248;
6.862402269;
39.13341914;
0.956033207;
-0.3053264;
2.572424916;
1.890201679;
2.036160222;
-0.030079571;
3.096013218;
0.094637253;
9.432898989;
1.019160147;
NaN;
0.175906558;
3.735803958;
1.014473102;];

K_ICPMS=[61.95552912
62.43047716
52.48744274
107.3691005
142.3667025
158.9300793
98.15207356
165.6109057
165.2682154
278.0161179
45.09617326
51.40717409
69.54375909
62.55872648
56.69645317
13.43049237
40.4362966
29.66377828
88.36038852
22.51089181
22.89500665
45.59318552
43.05133792
24.9120738];

K_IC=[17.17926055;
17.20979067;
23.80352304;
NaN;
52.84830868;
65.86064327;
37.82016796;
64.7677789;
66.86700627;
110.2255857;
5.903889901;
17.44311936;
16.94561731;
19.11444486;
15.62217719;
-1.014775616;
10.01898798;
2.706206275;
22.08757098;
1.761242146;
-6.013022364;
10.60062154;
23.89016676;
-1.139298375;];


Mn_ICPMS=[4.120064232
5.108068197
4.839170521
4.429167838
4.322819497
2.884969318
2.254359553
2.22711161
2.184545445
2.088773517
1.807623633
1.172006082
0.429862387
0.021240732
0.030510757
NaN
0.007595592
0.001668455
0.062037394
0.010780159
NaN
0.034264274
-0.004040102
NaN];

Fe_ICPMS=[2.545486261;
2.370999898;
2.713264729;
2.355136332;
2.650592477;
1.4148266;
2.284819661;
1.443272845;
1.820389767;
2.147572311;
2.368325028;
1.276215464;
2.114075286;
0.896655827;
1.054049426;
0.637673554;
0.560789532;
0.535161998;
2.092817555;
13.06414346;
0.93984054;
1.70194957;
1.322226767;
1.255825806];

Cu_ICPMS=[2.180262105
3.923731297
5.097566638
5.258402921
4.041892669
3.516302247
2.601722123
2.252487739
1.019643221
1.741503108
1.68250521
0.796669097
-0.224462024
-1.644235219
-1.57180833
-1.824302234
-2.082279135
-1.94873037
-2.454893364
-2.865805114
-2.823330133
-2.758499627
-3.155168559
-2.895468334];

Ca_ICPMS=[NaN
NaN
40.15814151
48.75875732
66.95824601
270.1707179
29.02338802
79.55358495
61.7203107
266.1477884
20.58725297
23.73909035
NaN
NaN
NaN
NaN
NaN
9.245337933
27.53460562
11.96810363
5.253401262
13.54062485
16.5067866
15.36328427];

Zn_ICPMS=[NaN
NaN
NaN
NaN
NaN
20.13475346
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

Ca_IC=[27.9110123;
28.7536393;
13.11863735;
11.09165213;
19.81072392;
214.4102589;
8.404754764;
33.90031859;
23.24142801;
133.643605;
2.264664584;
1.568356467;
0;
3.985631248;
1.42674336;
0;
2.769772843;
0;
17.69656066;
0;
0;
0;
4.277658179;
0;];

Sr=[0.199060177
0.183166358
0.160645583
0.16848592
0.157209899
0.203963019
0.109663517
0.135107259
0.126890079
0.163142113
0.059720472
0.068551414
0.056558752
0.055187534
0.065887099
0.023772782
0.037156039
0.033521136
0.061189225
0.037010278
0.052140218
0.042648963
0.043214543
0.042032604];

corr_fac=[1.073502832;
1.188159923;
1.242056353;
1.2298989;
1.254661338;
1.122320833;
1.00440978;
1.070518657;
1.089012673;
1.080025053;
1.077446414;
1.032234121;
0.760999982;
0.627954303;
0.646261673;
0.630357634;
0.621575239;
0.630640228;
0.708340726;
0.912109015;
0.903572372;
0.907321001;
0.877604054;
0.906581819];

nitrate=[57.7082938;
119.4494193;
79.28434979;
62.60998633;
61.81212706;
1421.655134;
68.40366109;
211.5591723;
130.5901953;
1201.427032;
28.76096404;
37.69471259;
16.42120316;
41.95610493;
13.81599519;
11.30946115;
3.215206508;
21.03201287;
43.98701291;
23.97293165;
25.34444669;
41.60826686;
58.40940246;
46.71603344;];

sulfate=[50.79064233
56.10004526
50.07643211
49.96823592
48.16047041
51.64340249
30.23211636
39.95142048
32.01375263
39.06576852
25.61187219
28.12349663
15.52099289
12.24956561
12.23535619
11.90645566
9.018629478
11.14542441
31.6730194
90.88636382
103.7558216
95.11333032
68.38667537
54.19968398];

chloride=[7.975484937
3.968738023
6.405422407
26.94129483
13.06707167
16.58097839
10.58581624
12.22264018
17.42936578
5.671459203
2.247770912
7.185338042
10.57355982
4.263242096
5.433962702
-0.451541151
1.266045258
1.027802948
8.87915352
2.278993096
-0.608561121
6.316292023
54.11224984
-0.065269285];

ammonium_IC=[2.514455359;
12.11226054;
8.91707649;
3.694528468;
3.384793978;
34.68274929;
3.072214999;
9.379781544;
2.386443919;
9.122640001;
3.328165697;
-0.25553985;
-1.434856124;
0.37188046;
-0.462712711;
-0.416432319;
2.475467382;
-1.251696873;
1.609534386;
0.928910709;
3.470896044;
-0.903396193;
0.696932875;
-1.008329259;];

%provided by ragen
%Jan *0.0172./0.672
%Feb *0.014./0.76266
sulfate_conc=sulfate.*0.0172./0.672;
nitrate_conc=nitrate.*0.0172./0.672;
ammonium_IC_conc=ammonium_IC.*0.0172./0.672;
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

doy=(8/24):(1/24):(31/24);

doy=doy+julian('0112')+365;

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
plot(doy-377,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5,2)
plot(doy-377, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4,5,3)
plot(doy-377, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,4)
plot(doy-377, NOa_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,5)
plot(doy-377, Sr)
title('Strontium')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4,5,6)
plot(doy-377, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,7)
plot(doy-377, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,8)
plot(doy-377, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,9)
plot(doy-377, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,10)
plot(doy-377, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 11)
plot(doy-377, K_ICPMS_conc, doy-377, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 12)
plot(doy-377,Mg_ICPMS_conc, doy-377, Mg_IC_conc, 'k')
% plot(doy-377,Mg_ICPMS)
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 13)
plot(doy-377,Na_ICPMS_conc,doy-377,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 14)
plot(doy-377,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 15)
plot(doy-377,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 16)
plot(doy-377,Mn_ICPMS_conc.*corr_fac)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 17)
plot(doy-377,Ca_ICPMS_conc,doy-377,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 18)
plot(doy-377,nitrate_conc, 'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 19)
plot(doy-377,sulfate_conc, 'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 20)
plot(doy-377,ammonium_IC_conc, 'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

sgtitle('Jan 12');

figure
cation=(fill_NaN(Na_IC)./23+fill_NaN(Mg_IC.*2)./24+ fill_NaN(K_IC)./39+ fill_NaN(Ca_IC.*2)./40 +fill_NaN(ammonium_IC./18));
anion=sulfate.*2./96+nitrate./62 + chloride./35;
scatter(anion, cation,140, sulfate,'filled');grid;colorbar;
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

