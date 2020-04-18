% H1	14:39	15:39	16-Feb
% H2	15:39	16:40	
% H3	16:40	17:40	
% H4	17:40	18:40	
% H5	18:40	19:41	
% H6	19:41	20:41	
% H7	20:41	21:41	
% H8	21:41	22:41	
% H9	22:41	23:42	
% H10	23:42	0:42	17-Feb
% H11	0:42	1:42	
% H12	1:42	2:43	
% H13	2:43	3:43	
% H14	3:43	4:43	
% H15	4:43	5:43	
% H16	5:43	6:44	
% H17	6:44	7:44	
% H18	7:44	8:44	
% H19	8:44	9:44	
% H20	9:47	10:48	
% H21	10:48	11:48	
% H22	11:48	12:48	
% H23	12:48	13:48	
% H24	13:48	14:49		

set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',4);

Na_ICPMS=[25.26206308
36.36619917
45.24138642
22.04585001
12.55424535
52.91932536
26.05293468
27.91293722
28.80335473
15.78759563
15.57727507
23.33575071
37.39850658
29.39790588
24.19995647
30.29636242
27.78557251
368.5536514
74.95048345
39.04524977
23.94779379
140.7798072
46.0552744
29.28878176]; 

Na_IC=[4.685912861
-1.806413831
4.812039561
13.53159258
1.035099242
1.493158456
36.94482263
14.05227623
5.536732718
3.0202302
-1.977533007
-6.659050476
-3.072841731
6.946127451
15.99712184
9.421234767
15.49158534
0.29282801
198.3953801
28.35839615
10.55462384
19.67603886
79.9956177
32.16012489];

Mg_ICPMS=[3.251283288
10.40533331
6.093856608
5.203108242
2.338445196
15.97491492
5.535777435
6.313586684
7.145928048
4.929832112
0.735178244
4.772459985
9.838214196
7.902881526
5.70289539
4.894191305
5.818233511
16.43425404
10.36713347
6.988260669
3.483057471
18.2431992
6.08978531
4.644935647];

Mg_IC=[5.749480398
2.721055789
6.357987918
4.236385038
2.571862342
4.119007687
11.6099158
6.391686955
6.462878627
8.385339159
4.78625347
1.679126345
5.861127233
10.97108521
8.370534515
6.287195235
8.225295721
1.93527991
8.945310249
2.952935968
10.60871244
1.421162262
15.37024868
10.65553777];

K_ICPMS=[69.1930435
67.9987179
97.57510952
55.7243434
23.46539297
90.84956229
61.92463001
37.8801686
45.5379093
34.39055374
21.69150128
60.38293648
63.44091928
50.75287115
40.74079949
73.82108129
42.99800251
169.1379807
200.3983579
62.73596822
67.29342885
117.2108561
40.94686374
49.51812358];

K_IC = [-14.37423645
-16.2665182
-15.89047875
-12.23722582
-15.14305625
-14.95594251
-9.473434876
-12.25504933
-16.27692523
-16.83984347
-16.81467372
-19.43337478
-15.91637263
-16.40147583
-11.97327749
-13.05731451
-10.79559077
-18.05460464
-12.8067647
-13.11193176
-17.9300403
-12.22642773
-13.24260008
-11.3635655];

Ca_ICPMS=[-6.259833548
88.48516582
62.44105992
17.70875225
9.714038831
153.8062697
4.659923255
72.03757348
75.86385579
30.33693775
8.182790551
3.820822089
101.9093931
75.41461224
51.12401489
8.670116787
61.89321352
203.9913653
31.39512713
55.64914755
-2.681400851
123.2505064
111.1102549
57.07198316];

Ca_IC=[0.0
0.0
18.12814916
0.0
0.0
0.0
55.6528787
0.0
0.1078117
15.47890896
0.0
0.0
0.0
19.92237062
24.46060963
4.57399658
0.0
-6.255344874
61.98588692
0.0
-4.273399585
0.0
31.45695542
14.25711915];

Mn_ICPMS=[0.082069187;
0.156263418;
0.07918577;
0.074581172;
0.061223924;
0.244609603;
0.076866225;
0.08664627;
0.108735936;
0.118232585;
0.042213678;
0.068717864;
0.1086613;
0.114639327;
0.086569097;
0.052902838;
0.109033688;
0.224502791;
0.111584778;
0.119001032;
0.091695419;
0.175467032;
0.080939753;
0.065116392;];

%here I use Iron 56 #1
Fe_ICPMS=[NaN
0.655723153
-0.015465447
-0.247598013
-0.16915815
0.648304254
-0.24514979
-0.105004225
0.114301215
0.225321327
NaN
-0.121620486
0.10232044
0.234792715
-0.04284004
NaN
-0.168389473
0.194980441
-0.213584904
0.599576696
-0.324804137
-0.078389812
-0.046563389
-0.241794736];

Cu_ICPMS=[0.287662646
0.714320647
0.028051287
-0.029597626
0.129617885
0.787555899
-0.069321109
0.148034996
0.429332635
0.471522652
0.016270275
-0.032997386
0.405807824
0.422299193
0.255606561
0.017041885
0.34351693
0.495993359
0.274305296
0.699852587
0.467691769
0.10850818
0.239697429
0.186472674];

Zn_ICPMS=[3.206432558
6.456697005
3.754298975
2.255591254
2.38172104
6.932269403
2.275378881
4.353818048
4.9332128
3.420347126
2.129454629
2.537213725
5.239236573
4.28693918
3.830970691
2.416770693
4.07210982
10.52926175
7.360516782
7.085238598
4.855694263
4.868016547
7.787838457
3.561628452];

corr_fac=[0.981223964;
0.954726418;
0.901863026;
0.918850633;
0.948460984;
0.936386246;
0.908557052;
0.959913022;
0.968496901;
0.963880625;
0.860510977;
0.933652005;
0.972729439;
0.985305871;
0.973217379;
0.951530227;
0.980825539;
1.164460468;
1.197307762;
1.224188654;
1.218533922;
1.169160355;
1.196070998;
1.331023569;];

sulfate=[29.44636089
19.68644882
25.92584516
27.05853205
16.18560731
13.0263067
26.98442276
19.70489442
11.77695723
16.70425536
12.68156172
16.39967476
11.30096259
15.51123612
20.00405497
17.67675424
22.74378332
15.54130942
71.75108285
134.9427941
87.15963172
91.92734466
92.11111024
72.92842999];

nitrate=[80.41003251
41.94346478
48.78106093
100.4465812
72.1228559
41.17146622
85.201232
88.14643863
46.49202694
33.06932761
38.72314278
40.64257138
39.42911588
40.53653572
68.60976744
78.30254237
115.0589424
80.83984443
259.3146653
105.0681465
49.26910394
105.9145158
143.7501219
97.16966214];

chloride=[209.6351249
71.58152454
246.3633254
224.2284931
153.146546
92.80134644
429.3762702
218.5888452
182.4190649
185.4819664
105.5372829
45.30536705
173.7864491
258.4445251
229.503196
182.3316089
192.4215312
144.0328356
820.0082192
402.493576
225.7644959
136.5235308
570.8005591
222.3917495];    

ammonium=[6.887290848
-2.671463585
-0.888259435
-2.838749839
-3.402978087
2.048038835
2.364395204
6.643881801
5.511488616
9.185428975
0.956833842
-3.24796003
9.783046175
3.272737097
8.69725368
6.593650166
7.346248205
-1.388218564
1.917670923
9.753469877
2.703811009
-3.812842391
19.00887221
4.190819788];

Sr=[-0.825724902;
-0.814912184;
-0.888834556;
-0.856142543;
-0.820359488
-0.81050056;
-0.957389866;
-0.821960358;
-0.915930684;
-1.178422426;
-0.88484389;
-0.812306692;
-0.895069211;
-0.946493515;
-0.959783337;
-0.915578632;
-0.822587176;
-0.862135946;
-1.046378258;
-0.966189728;
-1.055422496;
-0.989407651;
-1.092121011;
-0.992562799;];

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

doy=doy+julian('0216')+365;

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
plot(doy-412,pm25_new,'r.-')
title('PM2.5 (ug/m3)');
legend ('PM2.5');
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5,2)
plot(doy-412, NO2_new,'r.-')
title('NO2 (ppb)')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5,5,3)
plot(doy-412, O3_new,'r.-')
title('O3 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,4)
plot(doy-412, NOb_new,'r.-')
title('NO a (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,5)
plot(doy-412, Sr,'k')
title('Strontium ')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5,5,6)
plot(doy-412, NOy_new,'r.-')
title('NOy (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,7)
plot(doy-412, NOx_new./NOy_new,'r.-')
title('NOx/NOy ratio')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,8)
plot(doy-412, SO2_new,'r.-')
title('SO2 (ppb)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,9)
plot(doy-412, t3m_new,'r.-')
title('Temp(C)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);

subplot(5,5,10)
plot(doy-412, CO_new,'r.-')
title('CO (ppm)')
set(gca,'XTick',[0.5 1 1.5 2 2.5],'XTickLabel',['12pm';'12am';'12pm';'12am';'12pm']);


subplot(5, 5, 11)
plot(doy-412, K_ICPMS_conc, doy-412, K_IC_conc, 'k')
title('K')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 12)
plot(doy-412,Mg_ICPMS_conc, doy-412, Mg_IC_conc, 'k')
title('Mg')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 13)
plot(doy-412,Na_ICPMS_conc,doy-412,Na_IC_conc,'k') 
title('Na')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 14)
plot(doy-412,Fe_ICPMS_conc.*corr_fac)
title('Fe')
set(gca,'XTick',[0 0.5 1 1.5 25],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 15)
plot(doy-412,Cu_ICPMS_conc.*corr_fac)
title('Cu')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 16)
plot(doy-412,chloride_conc,'k')
title('Chloride')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 17)
plot(doy-412,Ca_ICPMS_conc,doy-412,Ca_IC_conc,'k') 
title('Ca')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 18)
plot(doy-412,nitrate_conc,'k')
title('Nitrate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);


subplot(5, 5, 19)
plot(doy-412,sulfate_conc,'k')
title('Sulfate')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 20)
plot(doy-412,ammonium_conc,'k')
title('Ammonium')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 21)
plot(doy-412,Zn_ICPMS_conc)
title('Zinc')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);

subplot(5, 5, 22)
plot(doy-412,Mn_ICPMS_conc)
title('Mn')
set(gca,'XTick',[0 0.5 1 1.5 2],'XTickLabel',['12am';'12pm';'12am';'12pm']);
sgtitle('Feb 21-22');


sgtitle('Feb 16-17');

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
