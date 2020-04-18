load merge_diurnal_v2.mat

figure
scatter(sulfate_ugm3,SO2_ppb, 30,t_merge,'filled'); grid;colorbar;title('SO2 vs. SO4');ylabel('SO2');xlabel('SO4');
potential_sulfate=sulfate_ugm3'+SO2_ppb.*12.187.*96./(273.15+t_merge);
figure
scatter(sulfate_ugm3,potential_sulfate,30,t_merge,'filled'); grid;colorbar;title('SO4 vs. pSO4');ylabel('pSO4');xlabel('SO4');
hold on
x1=sulfate_ugm3';
y1=potential_sulfate;
idx = isnan(y1)|isnan(x1);
z1=polyfit(x1(~idx),y1(~idx),1)
x_temp=0:1:50;
y_temp=z1(2)+z1(1).*x_temp;
plot(x_temp,y_temp,'--');

txt = ['y=' num2str(z1(1)) '*x+' num2str(z1(2))];;
text(20,10,txt)

figure
scatter(t_merge, sulfate_ugm3'./potential_sulfate,30,SO2_ppb, 'filled'); grid;hcb=colorbar;title('SO4/pSO4 vs. Temp');ylabel('SO4/pSO4');xlabel('Temp (C)');
title(hcb,'SO2 (ppb)');

figure
scatter(t_merge, sulfate_ugm3'./potential_sulfate,30,pm25_ugm3, 'filled'); grid;hcb=colorbar;title('SO4/pSO4 vs. Temp');ylabel('SO4/pSO4');xlabel('Temp (C)');
title(hcb,'PM2.5 (ug/m3)');