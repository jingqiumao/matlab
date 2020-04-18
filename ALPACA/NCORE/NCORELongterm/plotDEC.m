load mergeDEC
[year,month,day]=ymd(time_local_merge);
scatter(PM25_merge, sulfate_merge, 30, ambT_merge,'filled'); grid;colorbar;ylabel('sulfate');xlabel('pm25');
figure
scatter(PM25_merge(month==1), sulfate_merge(month==1), 30, ambT_merge(month==1),'filled'); grid;colorbar;ylabel('sulfate in Jan');xlabel('pm25');
figure
scatter(PM25_merge(month==2), sulfate_merge(month==2), 30, ambT_merge(month==2),'filled'); grid;colorbar;ylabel('sulfate in Feb');xlabel('pm25');

figure
scatter(PM25_merge, nitrate_merge, 30, ambT_merge,'filled'); grid;colorbar;ylabel('nitrate');xlabel('pm25');
figure
scatter(PM25_merge(month==1), nitrate_merge(month==1), 30, ambT_merge(month==1),'filled'); grid;colorbar;ylabel('Nitrate in Jan');xlabel('pm25');
figure
scatter(PM25_merge(month==2), nitrate_merge(month==2), 30, ambT_merge(month==2),'filled'); grid;colorbar;ylabel('Nitrate in Feb');xlabel('pm25');

figure
scatter(PM25_merge, ammonium_merge, 30, ambT_merge,'filled'); grid;colorbar;ylabel('NH4');xlabel('pm25');
figure
scatter(PM25_merge(month==1), ammonium_merge(month==1), 30, ambT_merge(month==1),'filled'); grid;colorbar;ylabel('NH4 in Jan');xlabel('pm25');
figure
scatter(PM25_merge(month==2), ammonium_merge(month==2), 30, ambT_merge(month==2),'filled'); grid;colorbar;ylabel('NH4 in Feb');xlabel('pm25');