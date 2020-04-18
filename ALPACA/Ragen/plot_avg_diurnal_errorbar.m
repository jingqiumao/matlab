close all;
clear all;
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',2);

load merge_diurnal_v2.mat
tod=(doy_merge-floor(doy_merge))*24;
[a,b1,c1]=a_median(tod,sulfate_ugm3',2);
[a,b2,c2]=a_median(tod,nitrate_ugm3',2);
[a,b3,c3]=a_median(tod,ammonium_ugm3',2);
[a,b4,c4]=a_median(tod,chloride_ugm3',2);
[a,b5,c5]=a_median(tod,Na_IC_ugm3',2);
[a,b6,c6]=a_median(tod,K_IC_ugm3',2);
[a,b7,c7]=a_median(tod,Ca_IC_ugm3',2);
[a,b8,c8]=a_median(tod,Mg_IC_ugm3',2);
[a,b9,c9]=a_median(tod,pm25_ugm3,2);
[a,b10,c10]=a_median(tod,NOy_ppb,2);
[a,b11,c11]=a_median(tod,O3_ppb,2);
[a,b12,c12]=a_median(tod,CO_ppb,2);

[a,b13,c13]=a_median(tod,Na_ICPMS_ugm3',2);
[a,b14,c14]=a_median(tod,K_ICPMS_ugm3',2);
[a,b15,c15]=a_median(tod,Ca_ICPMS_ugm3',2);
[a,b16,c16]=a_median(tod,Mg_ICPMS_ugm3',2);

[a,b17,c17]=a_median(tod,Mn_ICPMS_ugm3',2);
[a,b18,c18]=a_median(tod,Fe_ICPMS_ugm3',2);
[a,b19,c19]=a_median(tod,Cu_ICPMS_ugm3',2);
[a,b20,c20]=a_median(tod,Zn_ICPMS_ugm3',2);


figure
subplot(4,4,1)
plot(a,b1,'k.-')
ylabel('sulfate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('sulfate')
grid

subplot(4,4,2)
plot(a,b2,'k.-')
ylabel('nitrate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('nitrate')
grid

subplot(4,4,3)
plot(a,b3,'k.-')
ylabel('ammonium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('ammonium')
grid

subplot(4,4,4)
plot(a,b4,'k.-')
ylabel('Chloride');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Chloride')
grid

subplot(4,4,5)
plot(a,b5,'k.-',a,b13,'.-')
ylabel('Sodium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Sodium')
grid

subplot(4,4,6)
plot(a,b6,'k.-',a,b14,'.-')
ylabel('Postassium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Postassium')
grid

subplot(4,4,7)
plot(a,b7,'k.-',a,b15,'.-')
ylabel('Ca');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Ca')
grid

subplot(4,4,8)
plot(a,b8,'k.-',a,b16,'.-')
ylabel('Mg');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mg')
grid

subplot(4,4,9)
plot(a,b9,'r.-')
ylabel('PM2.5');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5')
grid

subplot(4,4,10)
plot(a,b10,'r.-')
ylabel('NOy');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('NOy')
grid

subplot(4,4,11)
plot(a,b11,'r.-')
ylabel('O3');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3')
grid

subplot(4,4,12)
plot(a,b12,'r.-')
ylabel('CO');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO')
grid

subplot(4,4,13)
plot(a,b17,'.-')
ylabel('Mn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mn')
grid

subplot(4,4,14)
plot(a,b18,'.-')
ylabel('Fe');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Fe')
grid

subplot(4,4,15)
plot(a,b19,'.-')
ylabel('Cu');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Cu')
grid

subplot(4,4,16)
plot(a,b20,'.-')
ylabel('Zn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Zn')
grid

sgtitle('Jan & Feb');

[a,b1,c1]=a_median(tod(doy_merge<410),sulfate_ugm3(doy_merge<410)',2);
[a,b2,c2]=a_median(tod(doy_merge<410),nitrate_ugm3(doy_merge<410)',2);
[a,b3,c3]=a_median(tod(doy_merge<410),ammonium_ugm3(doy_merge<410)',2);
[a,b4,c4]=a_median(tod(doy_merge<410),chloride_ugm3(doy_merge<410)',2);
[a,b5,c5]=a_median(tod(doy_merge<410),Na_IC_ugm3(doy_merge<410)',2);
[a,b6,c6]=a_median(tod(doy_merge<410),K_IC_ugm3(doy_merge<410)',2);
[a,b7,c7]=a_median(tod(doy_merge<410),Ca_IC_ugm3(doy_merge<410)',2);
[a,b8,c8]=a_median(tod(doy_merge<410),Mg_IC_ugm3(doy_merge<410)',2);
[a,b9,c9]=a_median(tod(doy_merge<410),pm25_ugm3(doy_merge<410),2);
[a,b10,c10]=a_median(tod(doy_merge<410),NOy_ppb(doy_merge<410),2);
[a,b11,c11]=a_median(tod(doy_merge<410),O3_ppb(doy_merge<410),2);
[a,b12,c12]=a_median(tod(doy_merge<410),CO_ppb(doy_merge<410),2);

[a,b13,c13]=a_median(tod(doy_merge<410),Na_ICPMS_ugm3(doy_merge<410)',2);
[a,b14,c14]=a_median(tod(doy_merge<410),K_ICPMS_ugm3(doy_merge<410)',2);
[a,b15,c15]=a_median(tod(doy_merge<410),Ca_ICPMS_ugm3(doy_merge<410)',2);
[a,b16,c16]=a_median(tod(doy_merge<410),Mg_ICPMS_ugm3(doy_merge<410)',2);

[a,b17,c17]=a_median(tod(doy_merge<410),Mn_ICPMS_ugm3(doy_merge<410)',2);
[a,b18,c18]=a_median(tod(doy_merge<410),Fe_ICPMS_ugm3(doy_merge<410)',2);
[a,b19,c19]=a_median(tod(doy_merge<410),Cu_ICPMS_ugm3(doy_merge<410)',2);
[a,b20,c20]=a_median(tod(doy_merge<410),Zn_ICPMS_ugm3(doy_merge<410)',2);


figure
subplot(4,4,1)
plot(a,b1,'k.-')
%add errorbar, c1 is the calculated standard deviation.
errorbar(a,b1,c1,'k','linewidth',2)
ylabel('sulfate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('sulfate')
grid

subplot(4,4,2)
plot(a,b2,'k.-')
%add errorbar, c2 is the calculated standard deviation.
errorbar(a,b2,c2,'k','linewidth',2)
ylabel('nitrate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('nitrate')
grid

subplot(4,4,3)
plot(a,b3,'k.-')
errorbar(a,b3,c3,'k','linewidth',2)
ylabel('ammonium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('ammonium')
grid

subplot(4,4,4)
plot(a,b4,'k.-')
errorbar(a,b4,c4,'k','linewidth',2)
ylabel('Chloride');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Chloride')
grid

subplot(4,4,5)
plot(a,b5,'k.-',a,b13,'.-')
ylabel('Sodium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Sodium')
grid

subplot(4,4,6)
plot(a,b6,'k.-',a,b14,'.-')
ylabel('Postassium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Postassium')
grid

subplot(4,4,7)
plot(a,b7,'k.-',a,b15,'.-')
ylabel('Ca');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Ca')
grid

subplot(4,4,8)
plot(a,b8,'k.-',a,b16,'.-')
ylabel('Mg');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mg')
grid

subplot(4,4,9)
plot(a,b9,'r.-')
ylabel('PM2.5');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5')
grid

subplot(4,4,10)
plot(a,b10,'r.-')
ylabel('NOy');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('NOy')
grid

subplot(4,4,11)
plot(a,b11,'r.-')
ylabel('O3');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3')
grid

subplot(4,4,12)
plot(a,b12,'r.-')
ylabel('CO');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO')
grid

subplot(4,4,13)
plot(a,b17,'.-')
ylabel('Mn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mn')
grid

subplot(4,4,14)
plot(a,b18,'.-')
ylabel('Fe');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Fe')
grid

subplot(4,4,15)
plot(a,b19,'.-')
ylabel('Cu');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Cu')
grid

subplot(4,4,16)
plot(a,b20,'.-')
ylabel('Zn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Zn')
grid

sgtitle('Janurary');

[a,b1,c1]=a_median(tod(doy_merge>410),sulfate_ugm3(doy_merge>410)',2);
[a,b2,c2]=a_median(tod(doy_merge>410),nitrate_ugm3(doy_merge>410)',2);
[a,b3,c3]=a_median(tod(doy_merge>410),ammonium_ugm3(doy_merge>410)',2);
[a,b4,c4]=a_median(tod(doy_merge>410),chloride_ugm3(doy_merge>410)',2);
[a,b5,c5]=a_median(tod(doy_merge>410),Na_IC_ugm3(doy_merge>410)',2);
[a,b6,c6]=a_median(tod(doy_merge>410),K_IC_ugm3(doy_merge>410)',2);
[a,b7,c7]=a_median(tod(doy_merge>410),Ca_IC_ugm3(doy_merge>410)',2);
[a,b8,c8]=a_median(tod(doy_merge>410),Mg_IC_ugm3(doy_merge>410)',2);
[a,b9,c9]=a_median(tod(doy_merge>410),pm25_ugm3(doy_merge>410),2);
[a,b10,c10]=a_median(tod(doy_merge>410),NOy_ppb(doy_merge>410),2);
[a,b11,c11]=a_median(tod(doy_merge>410),O3_ppb(doy_merge>410),2);
[a,b12,c12]=a_median(tod(doy_merge>410),CO_ppb(doy_merge>410),2);

[a,b13,c13]=a_median(tod(doy_merge>410),Na_ICPMS_ugm3(doy_merge>410)',2);
[a,b14,c14]=a_median(tod(doy_merge>410),K_ICPMS_ugm3(doy_merge>410)',2);
[a,b15,c15]=a_median(tod(doy_merge>410),Ca_ICPMS_ugm3(doy_merge>410)',2);
[a,b16,c16]=a_median(tod(doy_merge>410),Mg_ICPMS_ugm3(doy_merge>410)',2);

[a,b17,c17]=a_median(tod(doy_merge>410),Mn_ICPMS_ugm3(doy_merge>410)',2);
[a,b18,c18]=a_median(tod(doy_merge>410),Fe_ICPMS_ugm3(doy_merge>410)',2);
[a,b19,c19]=a_median(tod(doy_merge>410),Cu_ICPMS_ugm3(doy_merge>410)',2);
[a,b20,c20]=a_median(tod(doy_merge>410),Zn_ICPMS_ugm3(doy_merge>410)',2);

figure
subplot(4,4,1)
plot(a,b1,'k.-')
ylabel('sulfate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('sulfate')
grid

subplot(4,4,2)
plot(a,b2,'k.-')
ylabel('nitrate')
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('nitrate')
grid

subplot(4,4,3)
plot(a,b3,'k.-')
ylabel('ammonium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('ammonium')
grid

subplot(4,4,4)
plot(a,b4,'k.-')
ylabel('Chloride');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Chloride')
grid

subplot(4,4,5)
plot(a,b5,'k.-',a,b13,'.-')
ylabel('Sodium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Sodium')
grid

subplot(4,4,6)
plot(a,b6,'k.-',a,b14,'.-')
ylabel('Postassium');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Postassium')
grid

subplot(4,4,7)
plot(a,b7,'k.-',a,b15,'.-')
ylabel('Ca');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Ca')
grid

subplot(4,4,8)
plot(a,b8,'k.-',a,b16,'.-')
ylabel('Mg');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mg')
grid

subplot(4,4,9)
plot(a,b9,'r.-')
ylabel('PM2.5');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('PM2.5')
grid

subplot(4,4,10)
plot(a,b10,'r.-')
ylabel('NOy');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('NOy')
grid

subplot(4,4,11)
plot(a,b11,'r.-')
ylabel('O3');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('O3')
grid

subplot(4,4,12)
plot(a,b12,'r.-')
ylabel('CO');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('CO')
grid

subplot(4,4,13)
plot(a,b17,'.-')
ylabel('Mn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Mn')
grid

subplot(4,4,14)
plot(a,b18,'.-')
ylabel('Fe');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Fe')
grid

subplot(4,4,15)
plot(a,b19,'.-')
ylabel('Cu');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Cu')
grid

subplot(4,4,16)
plot(a,b20,'.-')
ylabel('Zn');
xlabel('Time of day (AST)');
set(gca,'XTick',[0 6 12 18 24],'XTickLabel',[' 0:00';' 6:00';'12:00';'18:00';' 0:00']);
title('Zn')
grid

sgtitle('Feburary');

