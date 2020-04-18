% H1	7:55	8:55
% H2	8:55	9:55
% H3	9:55	10:55
% H4	10:55	11:56
% H5	11:56	12:56
% H6	12:56	13:56
% H7	13:56	14:57
% H8	14:57	15:57
% H9	15:57	16:57
% H10	16:59	17:59
% H11	17:59	18:59
% H12	18:59	19:59
% H13	19:59	21:00
% H14	21:00	22:00
% H15	22:00	23:00
% H16	23:00	0:00
% H17	0:00	1:01
% H18	1:01	2:01
% H19	2:01	3:03
% H20	3:03	4:02
% H21	4:02	5:02
% H22	5:02	6:02
% H23	6:02	7:02
% H24	7:02	8:03
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[176.3406552
19.05319482
32.82167267
33.59195488
26.38672423
5.582123949
26.34175095
17.04833664
10.68143931
42.24354872
3489.075312
250.1200398
33.62035282
39.97595814
65.19892614
114.8013563
30.0645123
8.46064233
22.28634658
40.64657848
52.03447342
35.64865529
31.66214234
12.7156816];

Na_IC=[142.8588561;
20.81766314;
22.99021177;
8.595109264;
11.06772963;
5.561169307;
4.752261528;
7.472489032;
48.38435464;
32.39372425;
61.96406043;
150.0102813;
14.33422969;
23.23093954;
59.55376921;
110.3202989;
5.003195686;
13.86990932;
19.0421019;
39.92888692;
65.49003674;
36.636151;
20.65492929;
8.407696008;];

Mg_ICPMS=[5.395975277
4.226354588
3.697058529
4.648618869
2.564856063
1.038151142
3.276005371
0.859810924
1.586253172
2.322455971
5.880701673
36.46052226
5.120660159
5.778899737
9.696934682
9.893522459
5.637243122
2.081153799
2.174338191
6.210100019
12.31429879
9.617540217
7.109993337
3.923188964];

Mg_IC = [8.589144373;
0.646776872;
2.893271665;
-0.053994906;
3.076538865;
-0.831347831;
0.196638831;
0.888159739;
3.650567696;
4.659160694;
3.03066678;
14.79287422;
3.027170292;
8.369499908;
0.921207389;
12.49784648;
2.249889165;
2.258533498;
1.163649112;
2.45706624;
12.05857752;
4.059009091;
3.544670857;
3.272744985;];

K_ICPMS=[54.60108596
68.5440594
51.91987969
84.59103979
63.65628105
54.55662598
76.3233612
59.72507343
58.67179124
86.41583044
115.1008773
410.7898158
133.670471
124.8031415
169.0782364
128.9461428
141.8953701
49.99471276
76.49784343
176.3681665
173.3482231
124.476705
91.30789678
58.77359227];

K_IC=[35.65338161;
24.09032071;
17.81668111;
13.91288767;
20.99896959;
23.24705887;
16.44100246;
23.41538351;
102.7331358;
34.9132117;
121.4199503;
144.4581482;
12.88837208;
36.15642186;
54.54385361;
133.3393057;
17.18287381;
32.12184335;
48.06035633;
106.5821022;
159.3999902;
87.94489439;
45.13867225;
20.51090342;];


Mn_ICPMS=[0.033175226
NaN
0.056633529
-0.003226152
-0.013136236
NaN
-0.00380104
NaN
NaN
-0.012687507
0.121820104
0.655290553
0.310231179
0.235312881
0.358078977
0.223117307
0.29878617
0.579130749
0.276362322
1.865836368
7.150220086
8.561111146
8.857098305
5.762447761];

%here I use 56 #2, instead of 56#1
Fe_ICPMS=[0.809746172
0.961372788
3.196379426
1.48406845
1.208101375
0.213057392
2.008280892
1.195063708
0.615283084
1.84692293
3.511161776
21.13009802
2.929413036
2.877814934
3.544241023
1.319514569
4.601581196
0.707574996
1.070655171
1.511378137
3.37435935
3.101397168
6.419286278
3.282853488];

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
0.37232972
2.111945173
3.512902058
3.521059085];

Ca_ICPMS=[36.29030434
39.88477455
29.67590337
68.74544469
40.91638762
17.34273111
NaN
NaN
19.99650512
NaN
NaN
NaN
NaN
193.4731049
140.0844492
283.6915762
92.9601605
24.09918337
50.32345528
65.34266708
162.5723701
147.7749237
110.9922245
58.97753958];

Zn_ICPMS=[NaN
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
9.538785437
NaN
NaN
NaN
NaN
1.049449514
NaN
NaN
NaN
NaN
NaN
NaN
NaN];

Ca_IC=[20.96409869;
11.5638008;
0.0;
1.400057403;
18.87478786;
0.0;
0.0;
0.0;
10.28600349;
52.5109868;
56.81610513;
101.3442598;
0.0;
0.0;
39.25274435;
33.12616728;
5.921248438;
7.916449848;
19.97458636;
30.90818371;
123.8957919;
71.726832;
65.70975602;
23.51315526;];

Sr=[0.094519664;
0.056173073;
0.054861148;
0.055157476;
0.043651745;
0.033309377;
0.038681894;
0.037916727;
0.038833397;
0.049449688;
0.084790681;
0.091702574;
0.328082853;
0.260238529;
0.076632123;
0.068983482;
0.264719424;
0.158910369;
0.122457405;
0.244376469;
0.422360492;
0.378077039;
0.324498752;
0.213209756];

corr_fac=[1.477956441;
1.430875729;
1.452690051;
1.457290371;
1.523347758;
1.472946606;
1.532260279;
1.510350143;
1.544660604;
1.548565802;
1.503858922;
4.351298515;
3.985316528;
4.255882262;
4.108686089;
3.235870107;
1.740280849;
1.709027444;
1.281288062;
1.333495682;
1.519769507;
1.507627307;
1.521566366;
1.350786442];

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

nitrate=[90.12357692;
NaN;
50.83792395;
59.80288235;
120.783317;
71.19680371;
65.54693634;
69.46259593;
125.0101077;
246.0186054;
227.6819604;
416.1965385;
171.3721154;
217.7063972;
331.3087065;
212.5967189;
58.08878987;
62.53352308;
117.0594359;
75.20906065;
147.954893;
64.10179581;
75.58325481;
53.01708145;];

sulfate=[167.6459169;
NaN;
40.55786957;
62.2368532;
60.67856754;
99.48887957;
140.8157761;
216.746781;
273.5274225;
163.3077325;
217.2290115;
253.6775008;
164.3722719;
117.9201538;
113.1839905;
104.9425908;
21.4625003;
38.9543003;
21.07598907;
60.34158678;
137.3385779;
89.1579966;
77.73515653;
43.14828456;];

ammonium_IC=[18.06501242;
10.5770345;
0;
-6.870674955;
0;
2.975466104;
21.1114224;
44.60511202;
49.89773773;
7.210312967;
0;
0;
-23.88023811;
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
0;];

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

doy=doy+julian('0111')+365;

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
plot(doy-376,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5,2)
plot(doy-376, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4,5,3)
plot(doy-376, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,4)
plot(doy-376, NOa_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,5)
plot(doy-376, Sr)
title('Strontium')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4,5,6)
plot(doy-376, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,7)
plot(doy-376, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,8)
plot(doy-376, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,9)
plot(doy-376, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(4,5,10)
plot(doy-376, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(4, 5, 11)
plot(doy-376, K_ICPMS_conc, doy-376, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 12)
plot(doy-376,Mg_ICPMS_conc, doy-376, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 13)
plot(doy-376,Na_ICPMS_conc,doy-376,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 14)
plot(doy-376,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 15)
plot(doy-376,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 16)
plot(doy-376,Mn_ICPMS_conc.*corr_fac)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 17)
plot(doy-376,Ca_ICPMS_conc,doy-376,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 18)
plot(doy-376,nitrate_conc, 'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(4, 5, 19)
plot(doy-376,sulfate_conc, 'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(4, 5, 20)
plot(doy-376,ammonium_IC_conc, 'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


sgtitle('Jan 11-12');

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
