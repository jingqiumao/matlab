% H1	15:39	16:39
% H2	16:39	17:40
% H3	17:40	18:40
% H4	18:40	19:40
% H5	19:40	20:41
% H6	20:41	21:41
% H7	21:41	22:41
% H8	22:41	23:41
% H9	23:41	0:42
% H10	0:42	1:42
% H11	1:42	2:42
% H12	2:42	3:43
% H13	3:43	4:43
% H14	4:43	5:43
% H15	5:43	6:43
% H16	6:43	7:44
% H17	7:44	8:44
% H18	8:44	9:44
% H19	9:44	10:44
% H20	10:47	11:47
% H21	11:47	12:47
% H22	12:47	13:48
% H23	13:48	14:48
% H24	14:48	15:48
% H25	15:48	16:49
% H26	16:49	17:49
% H27	17:49	18:49
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[7.921547689
6.372069101
3.170815128
246.1922114
11.56365698
8.085222355
17.65850088
16.53223743
9.226291989
4.429237349
6.80036217
99.18320684
17.25415836
16.90478631
8.144888459
9.825120548
49.88165878
15.1888572
9.457996992
12.42036214
36.36075451
8.050847004
21.04587697
43.73932027
58.27726764
9.975528122
19.96530747];

Na_IC=[9.594360847;
9.504982799;
10.29713353;
227.8802942;
15.09155067;
22.45804035;
21.87954646;
33.70274609;
11.84981369;
22.91638279;
18.69348636;
30.40418392;
108.8124994;
12.34932734;
12.44615445;
5.046247086;
25.84717916;
26.55956902;
25.25952684;
15.89878029;
13.91958956;
22.31824822;
40.40247865;
20.67288089;
51.79886023;
20.25159249;
22.29226081;];

Mg_ICPMS=[79.64954128
51.66652549
36.83486424
22.99669342
23.56325777
18.03037657
17.06966709
14.08763693
11.93124491
9.311800852
8.452481575
11.26857419
9.613173266
6.80220502
6.101092396
5.670892578
17.51844846
7.155467227
6.885818256
7.05006717
16.24741865
5.261053409
9.628367494
9.075930192
11.23703945
6.953656763
6.483855261];

Mg_IC=[51.06518551;
44.92145205;
24.55202708;
42.92832066;
18.97654862;
15.72553477;
9.949783166;
11.02407726;
7.594258482;
9.087901282;
7.125611883;
6.369752214;
20.43661156;
5.860347568;
4.752281301;
13.17866745;
11.0123142;
5.189124293;
6.620199408;
5.148982355;
3.188657822;
2.986908162;
7.990064663;
3.641817884;
7.043404673;
6.57754959;
9.762987135;];

K_ICPMS=[41.670867
14.34686153
19.96636496
24.55817147
52.35199691
19.83570939
47.70544345
50.51788717
35.42314044
22.09056224
24.10040024
105.6293356
36.87919061
54.24104675
34.20809398
35.28063445
67.98193953
99.66626279
19.02943452
45.02550868
82.13222863
50.1847575
67.42237499
82.34430082
174.3865107
43.55838545
81.33059099];

K_IC=[23.5921542;
14.65509542;
20.29056775;
57.33806927;
37.15439461;
41.9251518;
29.19722329;
73.42995652;
25.59904874;
50.74945201;
39.52814443;
63.68841836;
261.1692573;
21.06735757;
14.77723037;
-1.039317811;
87.78178762;
68.00922806;
56.39693562;
41.95857712;
38.4211815;
64.44629234;
102.082246;
34.42172962;
106.1585556;
48.19671366;
40.7212328;];

Fe_ICPMS=[13.93886117
3.578124326
NaN
NaN
NaN
NaN
0.329765858
NaN
1.102575383
NaN
NaN
NaN
1.043250989
-0.093964017
NaN
NaN
7.361642692
6.411398
3.5060373
0.087085457
2.345928224
0.253223459
3.069465618
4.037103504
1.991766736
-0.166630003
0.052906188];

Mn_ICPMS=[0.877030099
0.070310875
-0.0136134
NaN
NaN
NaN
-0.006499696
0.023256456
0.017835328
NaN
0.607111853
-0.005658177
0.000836737
NaN
NaN
NaN
0.056402846
0.083674579
0.17723446
0.071843175
0.066157577
0.099615138
0.050713936
0.052896597
0.085703442
0.010412949
NaN];

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
NaN
NaN
NaN
NaN];


Ca_ICPMS=[26.52873519
53.20046473
10.08118659
24.81212448
17.15548421
24.68603472
28.89558148
NaN
18.68426075
NaN
NaN
NaN
50.43868778
19.00615099
27.59131888
19.88444588
170.6626071
33.93644241
31.60458623
38.73510824
149.139716
20.40111442
60.66506706
33.93714192
NaN
NaN
NaN];

Zn_ICPMS=[
12.99574713
2.890312759
NaN
NaN
NaN
NaN
NaN
0.179911953
NaN
NaN
NaN
NaN
NaN
NaN
0.353025262
NaN
20.34373807
NaN
NaN
0.389850704
15.20860889
NaN
3.26635727
3.589865716
2.088724412
NaN
NaN];

Ca_IC=[12.50843623;
150.6636735;
11.84438363;
212.9044851;
22.87610725;
45.24154823;
14.40162339;
11.28496707;
NaN;
5.67631691;
5.858009231;
9.516925759;
155.9094361;
0.670768054;
25.68051653;
84.48132129;
27.90248578;
17.56654188;
13.62582692;
3.301834481;
NaN;
3.230914626;
40.41790323;
4.600182705;
13.10648199;
13.29645754;
19.4073982;];

ammonium_IC=[-1.363808995;
-4.376154076;
NaN;
-1.78905584
NaN;
NaN;
NaN;
NaN;
NaN;
-5.737135575;
NaN;
NaN;
-2.586306366;
5.711864552;
-5.216585198;
-4.778058942;
10.47223736;
3.130364456;
13.87767615;
NaN;
NaN;
34.58518901;
7.146308496;
54.1802463;
12.25361011;
NaN;
NaN;];

corr_fac=[1.388866564;
1.330271311;
1.373822907;
1.38794484;
1.358192549;
1.335093497;
1.374334143;
1.461904112;
1.403011788;
1.385201466;
1.374735187;
1.428837357;
1.427163804;
1.411752523;
1.483180962;
1.503089151;
1.51622927;
1.58334273;
1.62222023;
1.575994415;
1.574024079;
1.576290127;
1.550318001;
1.546344596;
1.601186237;
1.60620005;
1.64798671];

nitrate=[91.96336624;
121.7289405;
61.06600013;
78.8396227;
64.01672977;
178.07844;
61.91315424;
62.9473231;
37.31589104;
34.49133105;
32.19879808;
56.36843232;
195.0134161;
72.80747401;
160.3112963;
38.64687456;
129.1955855;
84.63976729;
110.1663005;
85.49223548;
82.58583462;
79.3946772;
134.4260358;
102.9170893;
119.2546038;
130.2203035;
64.83197639;];

sulfate=[10.62418161;
37.89292927;
27.85270348;
26.74716715;
16.47402869;
27.67520327;
13.31488421;
24.26178155;
8.571880571;
26.75752637;
18.59306798;
33.7117714;
74.2717502;
19.71939209;
16.96853874;
6.456787225;
38.8711201;
73.67210625;
104.8084241;
134.2748273;
106.1513252;
142.2457592;
113.620322;
174.3806028;
176.5265252;
94.4378552;
99.02665864;];

chloride=[0;
0;
0;
191.3392226;
0;
0;
0;
0;
0;
0;
0;
0;
40.62692271;
0;
0;
0;
0;
0;
0;
0;
0;
0;
0;
0;
-0.57849028;
0;
-4.701788188];

Sr=[NaN;
    0.086741459;
0.032746636;
0.044006385;
0.046982179;
0.036779591;
0.07860804;
0.036623449;
0.048473029;
0.02338122;
0.036592529;
0.069101417;
0.054389444;
0.04760406;
0.037571212;
0.042259937;
0.093834785;
0.066181962;
0.10786486;
0.045919089;
0.076899351;
0.05513049;
0.074405605;
0.079793698;
0.067421269;
0.086445596;
0.071190441];

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
Ca_IC_conc=Ca_IC.*0.0172./0.672;
K_IC_conc=K_IC.*0.0172./0.672;
Mg_IC_conc=Mg_IC.*0.0172./0.672;
Na_IC_conc=Na_IC.*0.0172./0.672;

doy=(16/24):(1/24):(42/24);

doy=doy+julian('0109')+365;

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
plot(doy-374,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,2)
plot(doy-374, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,3)
plot(doy-374, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,4)
plot(doy-374, NOa_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,5)
plot(doy-374, Sr)
title('Strontium')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4,5,6)
plot(doy-374, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,7)
plot(doy-374, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,8)
plot(doy-374, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,9)
plot(doy-374, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,10)
plot(doy-374, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 11)
plot(doy-374, K_ICPMS_conc, doy-374, K_IC, 'k')
title('K')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 12)
plot(doy-374, Mg_ICPMS_conc, doy-374, Mg_IC, 'k')
title('Mg')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 13)
plot(doy-374, Na_ICPMS_conc,doy-374, Na_IC,'k')
title('Na')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 14)
plot(doy-374,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 15)
plot(doy-374,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 16)
plot(doy-374,Ca_ICPMS_conc,doy-374, Ca_IC,'k')
title('Ca')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 17)
plot(doy-374,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 18)
plot(doy-374,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4, 5, 19)
plot(doy-374,ammonium_IC_conc,'k')
title('Ammonium')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

sgtitle('Jan 9-10');

figure
cation=(fill_NaN(Na_IC)./23+fill_NaN(Mg_IC.*2)./24+ fill_NaN(K_IC)./39+ fill_NaN(Ca_IC.*2)./40 +fill_NaN(ammonium_IC./18));
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
